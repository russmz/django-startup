#!/bin/sh

if [ ! -d "$PROJECT_NAME" ]; then
    echo ${PROJECT_NAME};
    django-admin startproject ${PROJECT_NAME} .;
fi
python manage.py runserver 0.0.0.0:${SERVER_PORT};
