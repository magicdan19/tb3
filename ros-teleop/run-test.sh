#!/bin/bash

docker run -it --rm --net=host \
--privileged -v /dev/input/js0:/dev/input/js0 \
--name teleop-test magicdan/ros-teleop \
/bin/bash

#roslaunch teleop_twist_joy teleop.launch
#rosrun joy joy_node
#/bin/bash