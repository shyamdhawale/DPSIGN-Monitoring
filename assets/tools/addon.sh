#!/bin/bash
# Created by Shyam Dhawale
header() {
clear
cat << "EOF"
DPSIGN

EOF
echo
echo "DPSIGN Monitor addon"
echo
echo
}

header
echo "Prepair DPSIGN Player..."
sleep 2

if [ ! -e /home/pi/dpsign/server.py ]
then
	echo
	echo "No DPSIGN found!"
	exit
fi

header
echo "The installation can may be take a while.."
echo
echo
echo
sudo -u pi ansible localhost -m git -a  "repo=${1:-https://github.com/shyamdhawale/DPSIGN-Monitoring.git} dest=/tmp/addon version=master"
cd  /tmp/addon/
sudo -E ansible-playbook addon.yml

header
echo "DPSIGN Monitor addon successfuly installed"
#echo "Device is being restarted in 5 seconds!"
sleep 5
#sudo reboot now
