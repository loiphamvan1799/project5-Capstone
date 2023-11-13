#!/usr/bin/env bash

docker build --tag=project-capstone .

docker image list

docker login

docker tag project-capstone loiphamvan/project-capstone:lasted

docker push loiphamvan/project-capstone:lasted