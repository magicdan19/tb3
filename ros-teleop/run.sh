#!/bin/bash

docker run -it --rm --net=host \
--privileged -v /dev/input/js0:/dev/input/js0 \
--name teleop magicdan/ros-teleop \
roslaunch teleop_twist_joy teleop.launch
#rosrun joy joy_node
#/bin/bash
#roslaunch teleop_twist_joy teleop.launch
