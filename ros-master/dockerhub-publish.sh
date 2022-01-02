#!/bin/bash

docker container commit magicdan/ros-master magicdan/ros-master:latest

docker image push magicdan/ros-master


