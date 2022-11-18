# linux-install-scripts
## Available modules
### Drivers
- Nvidia GPU driver
- Wi-Fi driver fix for **Killer(R) Wi-Fi 6E AX1675s 160MHz Wireless Network Adapter (211NGW)** in **Alienware x17 R2**

### Generic Software
- Google Chrome
- Slack Desktop

### Generic Tools
- SSH server
- SpeedTest.net cli
- OBS Studio
- Flameshot (screenshot software)

### Developer Tools
- git
- git-lfs
- GitHub cli
- Visual Studio Code (with extensions)
- CppCheck (with GUI)

### Robotics Tools
- ROS
- Gazebo Fortress

## Usage
1. `cd linux-install-scripts`
2. Comment the modules you don't require in the `install_all_modules.bash` script using `vim` or `nano`
3. `chmod 755 install_all_modules.bash`
4. `chmod 755 modules/*.bash`
5. `./install_all_modules.bash`
