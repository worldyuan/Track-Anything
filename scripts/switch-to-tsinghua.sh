#!/bin/bash

# 备份原来的 sources.list
echo "⚙️ 备份 /etc/apt/sources.list 到 /etc/apt/sources.list.bak"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

# 检测当前 Ubuntu 版本
UBUNTU_VERSION=$(lsb_release -cs)
echo "🔍 检测到 Ubuntu 版本: $UBUNTU_VERSION"

# 替换为清华源
echo "💡 替换为清华源..."
sudo tee /etc/apt/sources.list <<EOF
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ $UBUNTU_VERSION main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ $UBUNTU_VERSION-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ $UBUNTU_VERSION-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ $UBUNTU_VERSION-security main restricted universe multiverse
EOF

# 更新索引
echo "🔄 更新 APT 缓存..."
sudo apt update

echo "✅ 已成功替换为清华源！"