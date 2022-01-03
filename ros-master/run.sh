#!/bin/bash

# docker network create --subnet=192.168.50.0/24 magicdan

docker run -it -e ROS_MASTER_IP=http://192.168.50.222:11311 -e ROS_IP=192.168.50.222 --net magicdan \
--ip 192.168.50.222 --rm --name dan ros-master  roscore
