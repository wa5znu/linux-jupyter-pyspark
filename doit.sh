#/bin/bash

# Run config.sh file to get settings
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${DIR}/config.sh

# podman / docker workaround
chmod -R 777 $WORKBOOK

# PySpark
# https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494

# Data Science / TensorFlow
# jupyter/pyspark-notebook:latest
# github: iot-salzburg/gpu-jupyter -> cschranz/gpu-jupyter:latest
# jupyter/scipy-notebook -> jupyter/datascience-notebook -> jupyter/tensorflow-notebook:latest
# tensorflow/tensorflow:2.2.3-gpu-jupyter
# jupyter/tensorflow-notebook:latest
# sudo=""


NOTEBOOK=${NOTEBOOK:-cschranz/gpu-jupyter}
SUDO="sudo"

# tensorflow-notebook
WORKDIR=/home/jovyan/work
# tensorflow-gpu-jupyter
# WORKDIR=/tf

echo "notebook=$NOTEBOOK workbook=$WORKBOOK webui=http://localhost:8888 - token=see output"

$SUDO podman run -it --rm -p 8888:8888 -v $WORKBOOK:$WORKDIR \
       ${NOTEBOOK}
