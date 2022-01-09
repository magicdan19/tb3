# Robot tondeuse MagicDan

Projet de robot tondeuse avec lidar, caméra stéréo, GPS-RTK2, HR-SR04, jetson nano, OpenCR,
développé avec Ros Melodic sur Ubuntu 18.04
Côté serveur, sur Jetson AGX
basé sur la conteneurisation avec aarch64 (arm64)

******* projet en cours de construction **********

# Contenus des images et répertoires
- roscore : image de base de ROS melodic sur ubuntu 18.04
- Gazebo : basée sur roscore avec ajout de Gazebo
- RVIZ : basée sur roscore avec ajout RVIZ
- robot : basée sur roscore avec ajout de Turtlebot3, RVIZ Set gazebo
- teleop : baséée sur roscore avec teleop et joy
- turtlesim : basée sur roscore avec turtlesim (pour faire des tests de base)

# astuces
pour ouvrir un nouveau terminal 
- gnome-terminal
