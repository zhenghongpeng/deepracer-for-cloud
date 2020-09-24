#!/usr/bin/env bash

BACKUP_LOC=/tmp/deepracer-training/backup
FILENAME=$(date +%Y-%m-%d_%H-%M-%S)
tar -czvf ${FILENAME}.tar.gz /home/zpeng/code/deepracer-for-dummies/docker/volumes/minio/bucket/rl-deepracer-sagemaker/*
mv ${FILENAME}.tar.gz $BACKUP_LOC