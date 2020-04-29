#!/bin/bash -xve

sudo apt-get update
sudo apt-get install opencv-data libopencv-dev python-opencv

#sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
#sudo ldconfig

#sudo apt-get install libopencv-dev
sudo apt-get install ros-kinetic-cv-bridge
sudo apt-get install ros-kinetic-cv-camera

#sync and make
rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

#clone pimouse_ros
cd ~/catkin_ws/src/
git clone https://github.com/citueda/pimouse_ros.git

cd ~/catkin_ws
catkin_make
