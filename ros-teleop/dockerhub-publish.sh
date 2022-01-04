#!/bin/bash

echo "*** commit ***"
docker container commit teleop magicdan/ros-teleop:latest
echo "*** push ***"
docker image push magicdan/ros-teleop
echo "*** fin ***"