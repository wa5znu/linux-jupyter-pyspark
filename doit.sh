#/bin/bash

# Run config.sh file to get settings
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ${DIR}/config.sh

# https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494
docker run -it --rm -p 8888:8888 -v "${WORKBOOK} " \
       jupyter/pyspark-notebook 

echo "http://localhost:8888"
