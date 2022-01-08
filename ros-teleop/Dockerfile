FROM magicdan/ros-master-full

SHELL [ "/bin/bash" , "-c" ]

RUN apt-get update && apt-get install ros-melodic-teleop-twist-joy -y --no-install-recommends \
ros-melodic-teleop-twist-keyboard   \
ros-melodic-joystick-drivers \
ros-melodic-joy

COPY teleop.py /catkin_ws/src/teleop/src/teleop.py
