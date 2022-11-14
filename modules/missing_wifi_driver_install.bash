#!/usr/bin/env bash
machine=$(uname -n)
if [[ $machine == x17-R2* ]]; then
    echo "INSTALLING: Wi-Fi driver backport. Alienware x17 R2 model detected"
    wget https://launchpad.net/ubuntu/+source/backport-iwlwifi-dkms/9858-0ubuntu3/+build/23560630/+files/backport-iwlwifi-dkms_9858-0ubuntu3_all.deb
    sudo dpkg -i backport-iwlwifi-dkms_*.deb
    sudo apt install -f
    rm backport-iwlwifi-dkms_*.deb
else
    echo "SKIPPING: Wi-Fi driver manual install. Alienware x17 R2 model not detected"
fi