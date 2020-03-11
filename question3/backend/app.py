# https://docs.python.org/3/tutorial/venv.html
from flask import Flask
from flask_restful import Resource, Api, reqparse
from flask_mysqldb import MySQL
from flask_cors import CORS

app = Flask(__name__)

api = Api(app)

CORS(app)

app.config['MYSQL_HOST'] = 'testmysql'
app.config['MYSQL_USER'] = 'user'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'test'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)

@app.route('/')
def index():
  cur = mysql.connection.cursor()
  cur.execute('''
  CREATE TABLE IF NOT EXISTS vote (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vote` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kiosk_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;''')
  return 'index page'

persons = ['林林', '薯片', '正氣']

class Vote(Resource):
  def get(self):
    try:
      parser = reqparse.RequestParser()
      parser.add_argument('last10min', type=bool, location='args')
      args = parser.parse_args()

      cur = mysql.connection.cursor()
      stmt = '''SELECT vote, count(id) as num_vote FROM vote'''
      if args.last10min:
        stmt += ' WHERE created >= DATE_SUB(NOW(), INTERVAL 10 MINUTE)'
      stmt += ''' GROUP BY vote'''
      cur.execute(stmt)
      rv = cur.fetchall()

      json_data=[]
      for result in rv:
        json_data.append(result)

      if len(json_data) != 0:
        for person in persons:
          result = len([ x for x in json_data if x['vote'] == person])
          if result == 0:
            json_data.append({ 'vote': person, 'num_vote': 0 })
      else:
        for person in persons:
          json_data.append({ 'vote': person, 'num_vote': 0 })

      return { 'status': 200, 'message': 'success', 'data': json_data }, 200
    except:
      return { 'status': 500, 'message': 'Internal Server Error' }



  def post(self):
    try:
      parser = reqparse.RequestParser()
      parser.add_argument('vote', type=str)
      parser.add_argument('kiosk_id', type=str)

      args = parser.parse_args()

      print(args)

      cur = mysql.connection.cursor()
      cur.execute('''INSERT INTO vote (vote, kiosk_id) VALUES (%s, %s);''', (args['vote'], args['kiosk_id']))


      mysql.connection.commit()
      # return { 'status': 200, 'message': 'success', 'data': args }, 200
      return "Thank You", 200
    except:
      # return { 'status': 500, 'message': 'Internal Server Error' }, 500
      return "Something happened. Please wait", 500

api.add_resource(Vote, '/vote')


if __name__ == '__main__':
  app.run(host='0.0.0.0', port=5000, debug=True)