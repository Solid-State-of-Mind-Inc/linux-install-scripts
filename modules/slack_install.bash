#!/bin/bash
curl -s https://packagecloud.io/install/repositories/slacktechnologies/slack/script.deb.sh | sudo bash
sudo add-apt-repository -r https://packagecloud.io/slacktechnologies/slack/ubuntu
sudo apt update
sudo apt install -y slack-desktop