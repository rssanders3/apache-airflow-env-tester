#!/bin/bash

if [ "$DATABASE_ENGINE" == "postgres" ]; then
    pg_isready -U airflow
elif [ "$DATABASE_ENGINE" == "mysql" ]; then
    mysqladmin ping -h localhost -u root
else
    echo "Unsupported database engine: '$DATABASE_ENGINE'"
    exit 1
fi