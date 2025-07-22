#!/bin/bash

sudo apt remove --purge cuda*
sudo apt autoremove

sudo apt update
sudo apt install wget gnupg software-properties-common

# 添加 NVIDIA key
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update


sudo apt install cuda-11-8