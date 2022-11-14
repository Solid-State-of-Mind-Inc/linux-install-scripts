#!/usr/bin/env bash
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
code --install-extension vscode-icons-team.vscode-icons
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools-extension-pack
code --install-extension redhat.vscode-xml
code --install-extension compulim.compulim-vscode-closetag
code --install-extension ms-iot.vscode-ros
code --install-extension jeff-hykin.better-cpp-syntax
code --install-extension llvm-vs-code-extensions.vscode-clangd
code --install-extension ms-vscode.cmake-tools
code --install-extension matepek.vscode-catch2-test-adapter
code --install-extension hbenl.vscode-test-explorer