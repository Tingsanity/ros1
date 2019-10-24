sudo pip install virtualenv
sudo virtualenv -p /usr/bin/python3.7 venv
source venv/bin/activate
sudo chmod 777 venv/lib/python3.7/site-packages/
sudo chmod 777 venv/bin/
sudo chmod 777 venv/lib/python3.7/site-packages/__pycache__/
pip install catkin_pkg pyyaml empy rospkg numpy
pip install pandas editdistance dtaidistance