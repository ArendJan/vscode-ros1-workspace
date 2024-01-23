#!/bin/bash
set -e

source /opt/ros/$ROS_DISTRO/setup.bash
 

# Set the default build type
BUILD_TYPE=RelWithDebInfo
catkin build \
        --cmake-args "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
        -Wall -Wextra -Wpedantic
