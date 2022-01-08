#!/bin/bash

echo "*** commit ***"
docker container commit roscore magicdan/ros-master-full:latest
echo "*** push ***"
docker image push magicdan/ros-master-full
echo "*** fin ***"

