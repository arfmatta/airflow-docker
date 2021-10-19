# airflow-docker
Arquivos de configuração para subir estrutura completa do Airflow no docker

## Comandos preparatórios
`echo -e "AIRFLOW_UID=$(id -u)" > .env` \
`docker-compose up airflow-init`

## Para baixar o CLI do Airflow
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.2.0/airflow.sh'
