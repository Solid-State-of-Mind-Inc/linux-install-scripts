#!/usr/bin/env bash
sudo apt install -y curl
curl -s https://packagecloud.io/install/repositories/slacktechnologies/slack/script.deb.sh | sudo bash
sudo apt install -y slack-desktop