#!/bin/bash

docker run -it --rm --net=host --privileged  --env "TURTLEBOT3_MODEL=waffle" \
--env=NVIDIA_VISIBLE_DEVICES=all --env=NVIDIA_DRIVER_CAPABILITIES=all \
--env=DISPLAY --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix \
--runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 \
--name teleop_tb3 magicdan/robot-tondeuse roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch