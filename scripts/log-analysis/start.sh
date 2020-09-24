#!/usr/bin/env bash

<<<<<<< HEAD
nvidia-docker run --rm -it -p "8893:8888" \
-v `pwd`/../../docker/volumes/log-analysis:/workspace/venv/data \
=======
docker run --rm -d -p "8888:8888" \
-v `pwd`/../../data/logs:/workspace/logs \
>>>>>>> dd3a77ca1ec9e599f3a0cfceb3ac60d942654527
-v `pwd`/../../docker/volumes/.aws:/root/.aws \
-v `pwd`/../../data/analysis:/workspace/analysis \
--name loganalysis \
--network sagemaker-local \
 larsll/deepracer-loganalysis:v2-cpu

docker logs -f loganalysis