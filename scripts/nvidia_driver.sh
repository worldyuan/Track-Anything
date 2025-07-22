#!/bin/bash

sudo apt purge 'nvidia*' -y
sudo apt autoremove -y
sudo rm -rf /etc/X11/xorg.conf
sudo rm -rf /usr/lib/x86_64-linux-gnu/nvidia*
sudo rm -rf /usr/local/cuda*
sudo apt update
sudo apt install build-essential dkms linux-headers-$(uname -r) -y
sudo apt install nvidia-driver-535 -y
sudo apt install nvidia-cuda-toolkit