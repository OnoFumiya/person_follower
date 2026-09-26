#!/bin/bash

echo "╔══╣ Setup: Person Follower (STARTING) ╠══╗"

# Keep track of the current directory
DIR=`pwd`

# Return to the ~/colcon_ws/src directory
cd ..

git clone -b ${ROS_DISTRO}-devel https://github.com/OnoFumiya/ssd_ros.git
# Check if install.sh exists in each package
if [ -f ssd_ros/install.sh ]; then
    echo "Running install.sh in ssd_ros."
    cd ssd_ros
    bash install.sh
    cd ..
fi

# Download ROS packages
sudo apt-get update
sudo apt-get install -y \
    ros-$ROS_DISTRO-pointcloud-to-laserscan \
    ros-$ROS_DISTRO-vision-msgs \
    ros-$ROS_DISTRO-pcl-ros

echo "╚══╣ Setup: Person Follower (FINISHED) ╠══╝"