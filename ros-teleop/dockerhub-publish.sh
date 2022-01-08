#!/bin/bash

echo "*** commit ***"
docker container commit teleop magicdan/ros-teleop-full:latest
echo "*** push ***"
docker image push magicdan/ros-teleop-full
echo "*** fin ***"