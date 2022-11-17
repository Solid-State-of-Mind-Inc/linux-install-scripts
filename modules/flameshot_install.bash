#!/usr/bin/env bash
OWNER="flameshot-org"
REPO="flameshot"
LATEST_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/$OWNER/$REPO/releases/latest/)
LATEST_VERSION=$(echo $LATEST_RELEASE | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/')
LATEST_VERSION_NUMBER=$(echo $LATEST_VERSION | sed 's/v//')
echo "flameshot latest release version: $LATEST_VERSION"
echo "LATEST_VERSION_NUMBER: $LATEST_VERSION_NUMBER"
wget https://github.com/$OWNER/$REPO/releases/download/$LATEST_VERSION/flameshot-$LATEST_VERSION_NUMBER-1.debian-10.amd64.deb
sudo dpkg -i flameshot-*.deb
rm flameshot-*.deb
# Create custom binding to Super+Shift+S
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Shift><Super>S'
echo "INFO: Super+Shift+S binding to Screenshot now setted up!"