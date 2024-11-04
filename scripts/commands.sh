#!/bin/bash/

# Encerra o script em caso de erro
set -e

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  echo "Waiting for Postgres Database Startup ($POSTGRES_HOST $POSTGRES_PORT) ..." &
  sleep 1
done

echo "Postgres Database Started Successfully ($POSTGRES_HOST:$POSTGRES_PORT)"

python manage.py collectstatic
python manage.py migrate
python manage.py runserver
