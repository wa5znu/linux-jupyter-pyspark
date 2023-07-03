#/bin/bash

# Run config.sh file to get settings
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${DIR}/config.sh

# podman / docker workaround
chmod -R 777 $WORKBOOK

# PySpark
# https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494

# Data Science / TensorFlow
# jupyter/pyspark-notebook 
# github: iot-salzburg/gpu-jupyter -> cschranz/gpu-jupyter
# jupyter/scipy-notebook -> jupyter/datascience-notebook -> jupyter/tensorflow-notebook

NOTEBOOK=${NOTEBOOK:-jupyter/tensorflow-notebook}

echo "notebook=$NOTEBOOK workbook=$WORKBOOK webui=http://localhost:8888 - token=see output"

sudo podman run -it --rm -p 8888:8888 -v $WORKBOOK:/home/jovyan/work \
       docker://${NOTEBOOK}:latest


