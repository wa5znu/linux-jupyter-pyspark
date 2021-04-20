#/bin/bash

# Run config.sh file to get settings
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${DIR}/config.sh

# podman / docker workaround
chmod -R 777 $WORKBOOK

# https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494
#jupyter/pyspark-notebook 
sudo podman run -it --rm -p 8888:8888 -v $WORKBOOK:/home/jovyan/work \
       docker.io/jupyter/pyspark-notebook:latest &&

echo "http://localhost:8888"
