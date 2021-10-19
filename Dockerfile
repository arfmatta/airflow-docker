FROM apache/airflow:2.2.0
RUN pip install --no-cache-dir boto3 pandas requests sqlalchemy cx_Oracle \
    && pip install --upgrade apache-airflow-providers-google