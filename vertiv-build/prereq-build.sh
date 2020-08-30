#!/bin/bash

# Tested on Ubuntu 16.04.6 LTS
sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get install -y python-pip
sudo apt-get install -y libnl-route-3-dev
sudo apt-get install -y libnl-route-3-200
sudo python2 -m pip install -U pip==9.0.3
sudo pip install --force-reinstall --upgrade jinja2>=2.10
sudo pip install j2cli
sudo gpasswd -a ${USER} docker
echo ""
echo "## Prerequisite installation complete. Please relaunch SSH session to make use of $USER added to docker group. ##"
echo ""