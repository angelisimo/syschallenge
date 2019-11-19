#!/bin/bash
#git
sudo apt-get --yes install git
#docker
if [ -x "$(command -v docker)" ]; then
    echo "Update docker"
    # command
else
    echo "Install docker"
    # command
    curl -fsSL https://get.docker.com -o get-docker.sh
    sh get-docker.sh
fi
#docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#clone repo and setup images
git clone https://github.com/angelisimo/syschallenge.git
