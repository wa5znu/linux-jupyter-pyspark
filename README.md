# Jupyter PySpark Notebook

## Introduction
- Following this 
- Target local Linux
- Future: hopefully easier to run Jupyter or similar notebook with pyspark in AWS/GC
- Non-target: Mac laptop

## Requirements
- Recent Linux server with four or more  cores.
- Podman, aliased to docker
- A directory to save state into

## Installation
- mkdir $WORKBOOK
- ed conf.sh # add $WORKBOOK
- mkdir $WORKBOOK
- sudo ./install-podman.sh

## Running
- ./doit.sh
- Visit the 127.0.0.1 link it prints out

## References
- Installation: https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494
- PySpark CSV: https://sparkbyexamples.com/pyspark/pyspark-read-csv-file-into-dataframe/
