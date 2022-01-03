#!/bin/bash

screen -dmS turtlebot_fake /bin/bash -c "source /opt/ros/melodic/setup.bash;env TURTLEBOT3_MODEL=waffle roslaunch turtlebot3_fake turtlebot3_fake.launch"

sleep 2

screen -S turtlebot_fake -X screen /bin/bash -c "source /opt/ros/melodic/setup.bash;env TURTLEBOT3_MODEL=waffle roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch"

source "/opt/ros/$ROS_DISTRO/setup.bash"
exec "/bin/bash"

