#!/usr/bin/env bash

# This script will execute in Jenkins from the project root directory, so we need to watch the paths carefully

docker_tgt_dir=articulate/target/docker
mkdir $docker_tgt_dir

cp articulate/scripts/Dockerfile $docker_tgt_dir
cp articulate/target/articulate-0.0.3-SNAPSHOT.jar $docker_tgt_dir

# Update the docker image
docker build $docker_tgt_dir -t harbor.haas-102.pez.pivotal.io/library/articulate:latest
#docker push dbuchko/articulate:latest
docker push harbor.haas-102.pez.pivotal.io/library/articulate:latest
