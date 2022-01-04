#!/bin/bash

echo "*** commit ***"
docker container commit teleop magicdan/turtlesim:latest
echo "*** push ***"
docker image push magicdan/turtlesim
echo "*** fin ***"