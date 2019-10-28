sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt install curl -y
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt update -y
sudo apt install ros-melodic-desktop-full -y
sudo rosdep init
rosdep update
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential -y

#-------------------ros1+ros2 setup ~/.bashrc--------------------#
#read -p "What do you want to do? 1.Use ROS1 2.Use ROS2 3.Normal: " ROS_model
#if [ "${ROS_model}" == "1" ]; then
#        echo "OK,you are using ROS1"
#  source /opt/ros/melodic/setup.bash
#elif [ "${ROS_model}" == "2" ]; then
#        echo "OK,you are using ROS2"
#else
#        echo "OK,you are using Normal"
#fi
