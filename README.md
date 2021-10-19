# airflow-docker
Arquivos de configuração para subir estrutura completa do Airflow no docker

## Comandos preparatórios
`echo -e "AIRFLOW_UID=$(id -u)" > .env` \
`docker-compose up airflow-init`

## Configurar volumes para usar pastas compartilhadas do host
```
    - ~/workspace/python/dags:/opt/airflow/dags
    - ~/docker/airflow/logs:/opt/airflow/logs
    - ~/docker/airflow/plugins:/opt/airflow/plugins
    - ~/docker/airflow/data:/opt/airflow/data
```

## Uso de imagens
Para usar a imagem padrão do Docker, usa a linha abaixo, podendo mudar a versão \
`image: ${AIRFLOW_IMAGE_NAME:-apache/airflow:2.2.0}`

Para usar uma imagem personalizada, construída com as instruções do Dockerfile, comenta a linha acima e descomenta a linha abaixo: \
`build: .`

Para construir a imagem, executar `docker-compose up airflow-init` ou `docker-compose up` \
Para construir ou reconstruir a imagem: `docker-compose build` \

Os comandos devem ser executado na mesma pasta onde se encontram os arquivos `Dockerfile` e `docker-compose.yaml`

## Para baixar o CLI do Airflow
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.2.0/airflow.sh'
