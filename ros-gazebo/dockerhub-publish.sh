#!/bin/bash

echo "*** commit ***"
docker container commit dan magicdan/ros-gazebo:latest
echo "*** push ***"
docker image push magicdan/ros-gazebo
echo "*** fin ***"
