sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt install curl -y
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt update -y
sudo apt install ros-melodic-desktop-full -y
sudo rosdep init
rosdep update
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y
sudo pip install virtualenv
sudo virtualenv -p /usr/bin/python3.7 venv
source venv/bin/activate
sudo chmod 777 venv/lib/python3.7/site-packages/
sudo chmod 777 venv/bin/
sudo chmod 777 venv/lib/python3.7/site-packages/__pycache__/
pip install catkin_pkg pyyaml empy rospkg numpy

