#!/bin/bash
mkdir -p ./catkin_ws/src
cd ./catkin_ws
catkin_make
cd src
catkin_create_pkg rob_pkg
cd .. && catkin_make
cd src/rob_pkg && rm *
git clone https://github.com/noyzzz/omni_robot.git
cd ../.. && source devel/setup.bash
roslaunch -v rob_pkg spawn_urdf.launch

