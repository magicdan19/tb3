#!/bin/bash

echo "*** commit ***"
docker container commit dan magicdan/robot-tondeuse:latest
echo "*** push ***"
docker image push magicdan/robot-tondeuse
echo "*** fin ***"