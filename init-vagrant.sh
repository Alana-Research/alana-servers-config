#!/bin/bash
apt update
apt -y upgrade

# TODO CHANGE: INSTALL ANSIBLE USING PIP!!!! sudo pip3 install ansible

apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible
apt update
apt -y install ansible

L='es' && sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard
