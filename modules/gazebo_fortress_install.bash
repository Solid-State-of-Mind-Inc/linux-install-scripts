#!/usr/bin/env bash
# Generic tools
sudo apt install -y python3-pip wget lsb-release gnupg curl
# vcstool and colcon from apt
sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros2-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install -y python3-vcstool python3-colcon-common-extensions git git
# Getting the sources
PWD="$(pwd)"
mkdir -p ~/workspace/src
cd ~/workspace/src
wget https://raw.githubusercontent.com/ignition-tooling/gazebodistro/master/collection-fortress.yaml
vcs import < collection-fortress.yaml
sudo wget https://packages.osrfoundation.org/gazebo.gpg -O /usr/share/keyrings/pkgs-osrf-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/pkgs-osrf-archive-keyring.gpg] http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/gazebo-stable.list > /dev/null
sudo apt-get update
# Install all dependencies
sudo apt -y install \
$(sort -u $(find . -iname 'packages-'`lsb_release -cs`'.apt' -o -iname 'packages.apt' | grep -v '/\.git/') | sed '/ignition\|sdf/d' | tr '\n' ' ')
# Build the Gazebo libraries (Without tests)
colcon graph
colcon build --cmake-args -DBUILD_TESTING=OFF --merge-install
# Check if default shell is ZSH
FILE=~/.zshrc
if [ -f "$FILE" ]; then
    echo ". ~/workspace/src/install/setup.zsh" >> ~/.zshrc
else
    echo ". ~/workspace/src/install/setup.bash" >> ~/.bashrc
fi
echo ""
# Print version (version should be at least 6.13)
ign gazebo --version
# Set current directory to the script folder
cd $PWD