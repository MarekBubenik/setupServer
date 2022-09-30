#!/bin/bash
#
#

# Setup docker repo
# URL: https://docs.docker.com/engine/install/debian/https://docs.docker.com/engine/install/debian/
	
sudo apt-get install ca-certificates curl gnupg lsb-release -y;
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo \
	"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;

# Install Docker Engine

apt-get update;
apt-get install docker-ce docker-ce-cli containerd.io -y;

# Post-installation steps

groupadd docker;
usermod -aG docker mb;

# Configure Docker to start on boot

systemctl enable docker.service;
systemctl enable containerd.service;
