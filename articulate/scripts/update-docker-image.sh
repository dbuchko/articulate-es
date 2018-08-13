#!/usr/bin/env bash

# This script will execute in Jenkins from the project root directory, so we need to watch the paths carefully

# Update the docker image
docker build articulate/docker -t dbuchko/articulate
docker push dbuchko/articulate:latest

