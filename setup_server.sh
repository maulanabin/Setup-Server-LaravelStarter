#!/bin/bash

# Set Timezone
timedatectl set-timezone Asia/Jakarta

# Update & Upgrade
apt update && apt upgrade -y

# Install Dependencies
apt install git curl zip python3 python3-pip -y

# Install Docker
apt install docker.io -y

# Start Docker Service
systemctl start docker

# Enable Docker Service on Boot
systemctl enable docker

echo "Server setup completed successfully!"
