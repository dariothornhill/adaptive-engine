#!/usr/bin/env bash

python manage.py collectstatic --noinput
nginx &
/usr/local/bin/gunicorn config.wsgi:application -w 2 -b :8001 --log-level=info --log-file - --access-logfile -
