#!/bin/bash

echo "*** commit ***"
docker container commit dan magicdan/ros-master:latest
echo "*** push ***"
docker image push magicdan/ros-master
echo "*** fin ***"

