#!/usr/bin/env bash

currentuser=$(users | awk '{print $1}')

apt-get -y install python3-pip
apt-get -y install python3-venv

mkdir -p /home/$currentuser/.venvs
python3 -m venv /home/$currentuser/.venvs/MyEnv --system-site-packages
source /home/$currentuser/.venvs/MyEnv/bin/activate

pip3 install amitools
