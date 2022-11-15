#!/usr/bin/env bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y apt-utils curl htop neofetch net-tools vim
cd modules/

# Drivers
./nvidia_driver_install.bash
./missing_wifi_driver_install.bash

# Generic Software
./google_chrome_install.bash
./slack_install.bash

# Generic Tools
sudo apt install -y openssh-server
./speedtest_cli_install.bash
./obs_studio_install.bash

# Developer Tools
sudo apt install -y git git-lfs gcc-10
./github_cli_install.bash
./vscode_install.bash
./cppcheck_install.bash

# Robotics Tools
./ros_install.bash
./gazebo_fortress_install.bash

cd ../