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
- Add these cells

```
# Setup
from pyspark.sql import SparkSession

# local = this host only, *=use all cores
spark = SparkSession.builder.master("local[*]").getOrCreate()
```

```
# add your imports here

from pyspark.sql.functions import *
```

```
# Read your data
df = spark.read.option("header", True).csv("10000.csv")
```

```
# Analyze your data
df.count
```

```
# df.limit(10).toPandas()
```

## References
- Installation: https://jupyter-docker-stacks.readthedocs.io/en/latest/using/common.html
- PySpark test: https://medium.com/@suci/running-pyspark-on-jupyter-notebook-with-docker-602b18ac4494
  (The first cell is wrong; use the above Setup instead.)
- PySpark CSV: https://sparkbyexamples.com/pyspark/pyspark-read-csv-file-into-dataframe/
- PySpark getting started: https://spark.apache.org/docs/3.1.1/api/python/getting_started/index.html
