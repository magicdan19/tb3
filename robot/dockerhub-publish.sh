#!/bin/bash

echo "*** commit ***"
docker container commit robot magicdan/robot-tondeuse:latest
echo "*** push ***"
docker image push magicdan/robot-tondeuse
echo "*** fin ***"