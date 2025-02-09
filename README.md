# apache-airflow-env-tester
A Docker Project used to standup Apache Airflow with various Configurations

Note: Extended from the official Apache Airflow Docker Compose project: https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html

# Setup

Install DockerHub
Instlal Make

Create .env file in home
```
MYSQL_VERSION=5.7
APACHE_AIRFLOW_VERSION=2.2.2
PYTHON_VERSION=3.7
```

# Makefile Commands

Check Status of Docker Containers
```
make status
```


# Notes

Create and run Airflow based on:
Airflow version
Python version
MySQL

Allow you to install other pip packages