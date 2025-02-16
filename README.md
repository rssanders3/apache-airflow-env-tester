# apache-airflow-env-tester
A Docker Project used to standup Apache Airflow with various Configurations for testing purposes

Extended from the [Official Apache Airflow Docker Compose](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html) Project

This project allows you to define which supproting services to use. Including:
* Queueing Service - RabbitMQ or Redshift
* Database - MySQL or PostgreSQL

In addition, you can also define the Airflow version and Python version

All this with the goal of easily being able to configure a test environment.

# Setup

[DockerHub Install / Get Started](https://docs.docker.com/get-started/get-docker/)

[Docker Compose Install](https://docs.docker.com/compose/install/)

[Make Install](https://sp21.datastructur.es/materials/guides/make-install.html)

Create .env file in the project home. Use the .env.sample file as your base, and update it as per your needs
```
cd {PROJECT_HOME}
cp .env.sample .env
```

# Makefile Commands
Use the following commands from the commandline to control Airflow and the Docker Containers. 

Start Airflow
```
make up
```

Stop Airflow
```
make down
```

Restart Airflow
```
make restart
```

Check Status of Containers
```
make status
```

Trace through Container Logs
```
make logs
```
