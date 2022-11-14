#!/usr/bin/env bash
wget https://raw.githubusercontent.com/EchoHowardLam/quick-ros-install/origin-backport/ros_install.sh
chmod 755 ros_install.sh
./ros_install.sh noetic
rm ros_install.sh