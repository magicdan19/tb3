#!/bin/bash

docker run -it --rm --privileged --net=host \
--name teleop magicdan/ros-teleop rosrun teleop_twist_keyboard teleop_twist_keyboard.py
