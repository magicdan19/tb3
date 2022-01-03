#!/bin/bash

echo "*** commit ***"
docker container commit dan magicdan/ros-rviz:latest
echo "*** push ***"
docker image push magicdan/ros-rviz
echo "*** fin ***"