#!/bin/bash

docker run -it --net=host --rm --name roscore ros-master roscore
