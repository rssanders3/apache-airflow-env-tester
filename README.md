# apache-airflow-env-tester
A Docker Project used to standup Apache Airflow with various Configurations for testing purposes

Extended from the [Official Apache Airflow Docker Compose](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html) Project

This project allows you to define which supproting services to use. Including:
* Queueing Service - RabbitMQ or Redshift
* Database - MySQL or PostgreSQL

In addition, you can also define the Airflow version and Python version

All this with the goal of easily being able to configure a test environment.

## Setup

[DockerHub Install / Get Started](https://docs.docker.com/get-started/get-docker/)

[Docker Compose Install](https://docs.docker.com/compose/install/)

[Make Install](https://sp21.datastructur.es/materials/guides/make-install.html)

Create .env file in the project home. Use the .env.sample file as your base, and update it as per your needs
```
cd {PROJECT_HOME}
cp .env.sample .env
source .env
```

## Makefile Commands
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

## Access Airflow
After setting up your environment and starting up Airflow using the commands above, you can access Airflow (after a few minutes of start up time) by navigating to the Airflow Web Server from your browser:
```
http://localhost:8080
```
Default credentials: airflow/airflow

## Testing DAGs
In the project root directory there is a `./dags/` folder. To test an Airflow DAG, place the python file defining the DAG in this directory. The DAG should automatmcially be distributed to the containers and after the Scheduler processes the dag file, should show up in the Web Server.

## Testing Plugins
In the project root directory there is a `./plugins/` folder. To test an Airflow Plugin, place the python and template files defining the Plugin in this directory. Then restart Airflow.

## Adjusting Versions Check-List
Tasks to perform when you adjust the versions or usage of a specfici service in your `.env` file:

### Airlfow Version
[] Delete the Docker Database Volume (Name: apache-airflow-env-tester_db-volume) - Note: Your DB data will be cleared so consider backing it up if needed

### Python
N/A

### Database
[] Delete the Docker Database Volume (Name: apache-airflow-env-tester_db-volume) - Note: Your DB data will be cleared so consider backing it up if needed

### Queue
N/A

## Build your own Apache Airflow Docker Image
Use the following steps if you want to build Apache Airflow yourself and create a new image. This can be useful if you are seeking to test out a small change to the source code, or if you are trying to deploy a branch that is not apart of an official release.

1. Clone the [Apache Airflow](https://github.com/apache/airflow) Project to your Local
```
git clone https://github.com/apache/airflow
```

2. Checkout whichever Existing Branch you want (Full List here: https://github.com/apache/airflow/branches) 
```
git checkout {branch_name}
```

3. Build the Docker Image
```
docker build -t apache/airflow:{VERSION} .
```
Note: Update the {VERSION} placeholder with your desired value

4. Update your `.env` file to use the new verison you set in Step #3

## References

### Full List of Airflow Docker Images
https://hub.docker.com/r/apache/airflow/tags
