#!/usr/bin/env bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git git-lfs vim htop gcc-10 openssh-server curl
cd modules/
./github_cli_install.bash
./speedtest_cli_install.bash
./ros_install.bash
./vscode_install.bash
./google_chrome_install.bash
./slack_install.bash
./obs_studio_install.bash
./gazebo_fortress_install.bash
cd ../