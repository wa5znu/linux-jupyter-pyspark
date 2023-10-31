#/bin/bash -x

# Run config.sh file to get settings
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${DIR}/config.sh

# podman / docker workaround
chmod -R 777 $WORKBOOK

NOTEBOOK=${NOTEBOOK:-tensorflow/tensorflow:gpu-jupyter}

sudo docker run --gpus all -d -it -p 8848:8888 -v $WORKBOOK:/home/jovyan/work -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes --user root cschranz/gpu-jupyter:v1.5_cuda-11.6_ubuntu-20.04_python-only

