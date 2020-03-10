-- Find the top-10 articles (title, ID and like received) with most LIKE received from user on 2017-04-01
SELECT b.objectid,
       a.title,
       b.num_likes
FROM   (SELECT objectid,
               Count(userid) AS num_likes
        FROM   clickstream
        WHERE  action = 'LIKE_ARTICLE'
               AND Date(time) = Date('2017-04-01')
        GROUP  BY objectid
        ORDER  BY num_likes DESC
        LIMIT  10) b
       JOIN articles a
         ON b.objectid = a.id;

-- Find the count of users who install the app (i.e. with FIRST_INSTALL event) on 2017-04-01 and use our app at least once (i.e. with any event) between 2017-04-02 and 2017-04-08
SELECT Count(DISTINCT userid) AS num_users
FROM   clickstream
WHERE  userid IN (SELECT userid
                  FROM   clickstream
                  WHERE  action = 'FIRST_INSTALL'
                         AND Date(time) = Date('2017-04-01'))
       AND Date(time) >= Date('2017-04-02')
       AND Date(time) <= Date('2017-04-08');