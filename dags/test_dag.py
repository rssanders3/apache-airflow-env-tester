from datetime import datetime

from airflow import DAG
from airflow.operators.dummy import DummyOperator
from airflow.operators.bash import BashOperator

with DAG(
    dag_id="test_dag",
    start_date=datetime(2021, 1, 1),
    schedule_interval=None,
) as dag:
    dummy_task = DummyOperator(
        task_id="dummy_task"
    )

    bash_task = BashOperator(
        task_id="bash_task", 
        bash_command="""
        echo "bash_task"
        """
    )

    dummy_task >> bash_task
