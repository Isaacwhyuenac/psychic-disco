# Backend Documentation

A typical Flask app.

```zsh
  docker-compose up --build --remove-orphans -d

  # Cleanup
  docker-compose down
```

## Migration Setup

  Details can be found in [alembic.init](./alembic.ini) and [alembic](./alembic/)

  Use the following dependencies

- alembic
- sqlalchemy

## MySQL Setup

Our MySQL Database has two users

```env
  user=root
  password=example

  or
  user=user
  password=password

  database=test

```

If you have needs to go into the mysql container, run

```zsh
  docker-compose exec db mysql -u root -p test # password is `example`
  docker-compose exec db mysql -u user -p test # password is `password`
```

Run migration files with seeds

```zsh
  docker-compose run --rm backend alembic -x data=true upgrade head
```

To return a blank database

```zsh
  docker-compose run --rm backend alembic downgrade base
```

## MySQLdump

```zsh
  docker exec testmysql sh -c 'exec mysqldump test -uroot -p"example"' > data.sql
```

## Server Setup

- Flask
- Flask-mysql
