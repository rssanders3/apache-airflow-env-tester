from datetime import datetime

from airflow import DAG
from airflow.operators.dummy import DummyOperator

with DAG(
    dag_id="test",
    start_date=datetime(2021, 1, 1),
    schedule_interval=None,
) as dag:
    DummyOperator(task_id="task")