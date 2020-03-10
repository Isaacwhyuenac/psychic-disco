async function fetchData(selection, querystring, { x, y, z, height }) {
  const { data: { data = [] } = {} } = await axios.get(
    `http://127.0.0.1:5000/vote${querystring}`,
  )

  data.sort(function(a,b) {
    return a.vote.localeCompare(b.vote)
  })

  data.unshift({
    vote: `Total`,
    num_vote: data.reduce((sum, { num_vote }) => (sum += num_vote), 0),
  })

  x.domain(data.map(({ vote }) => vote))
  y.domain([
    0,
    d3.max(data, function(d) {
      return d.num_vote
    }),
  ])
  z.domain(data.map(({ vote }) => vote))

  selection.append('g')
    .attr('class', 'axis axis--x')
    .attr('transform', 'translate(0,' + height + ')')
    .call(d3.axisBottom(x))

  selection.append('g')
    .attr('class', 'axis axis--y')
    .call(d3.axisLeft(y))
    .append('text')
    .attr('transform', 'rotate(-90)')
    .attr('y', 6)
    .attr('dy', '0.71em')
    .attr('text-anchor', 'end')
    .text('num of vote')

  selection.selectAll('.bar')
    .data(data)
    .enter()
    .append('rect')
    .attr('class', 'bar')
    .attr('x', function(d) {
      return x(d.vote)
    })
    .attr('y', function(d) {
      return y(d.num_vote)
    })
    .attr('width', x.bandwidth())
    .attr('height', function(d) {
      return height - y(d.num_vote)
    })
    .attr('fill', function(d) {
      return z(d.vote)
    })

  selection.selectAll('text.bar')
    .data(data)
    .enter()
    .append('text')
    .attr('class', 'bar')
    .attr('text-anchor', 'middle')
    .attr('x', function(d) {
      return x(d.vote) + x.bandwidth() / 2
    })
    .attr('y', function(d) {
      return y(d.num_vote) - 10
    })
    .text(function(d) {
      return d.num_vote
    })
}
