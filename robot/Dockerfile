FROM magicdan/ros-master

RUN apt-get update && apt-get install -y --no-install-recommends screen

RUN apt-get install -y --no-install-recommends \
apt-utils \
nano \
ros-melodic-joy \
ros-melodic-teleop-twist-joy \
ros-melodic-teleop-twist-keyboard \
ros-melodic-laser-proc \
ros-melodic-rgbd-launch \
ros-melodic-depthimage-to-laserscan \
ros-melodic-rosserial-arduino \
ros-melodic-rosserial-python \
ros-melodic-rosserial-server \
ros-melodic-rosserial-client \
ros-melodic-rosserial-msgs \
ros-melodic-amcl \
ros-melodic-map-server \
ros-melodic-move-base \
ros-melodic-urdf \
ros-melodic-xacro \
ros-melodic-compressed-image-transport \
ros-melodic-rqt-image-view \
ros-melodic-gmapping \
ros-melodic-interactive-markers \
ros-melodic-navigation \
ros-melodic-gazebo-ros

RUN mkdir -p /root/catkin_ws/src/ \
&& cd /root/catkin_ws/src/ \
&& git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git \
&& git clone https://github.com/ROBOTIS-GIT/turtlebot3.git \
&& git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git

RUN export TURTLEBOT3_MODEL=waffle

RUN /bin/bash -c "source /opt/ros/melodic/setup.bash; cd /root/catkin_ws && /opt/ros/melodic/bin/catkin_make && /opt/ros/melodic/bin/catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/melodic install"

RUN useradd --create-home --shell /bin/bash robo
RUN echo "robo ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/robo && chmod 7770 /etc/sudoers.d/robo

COPY ./start_simu.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/start_simu.sh

USER root
WORKDIR /home/robo
RUN sudo rm -rf /var/lib/apt/lists/* 