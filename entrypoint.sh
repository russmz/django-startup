#!/bin/sh

if [ ! -d "$PROJECT_NAME" ]; then
    echo ${PROJECT_NAME};
    django-admin startproject ${PROJECT_NAME} .;
fi
python ${PROJECT_NAME}/manager.py 0.0.0.0:${PORT};
