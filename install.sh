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
    sudo /etc/init.d/docker start
fi
#docker compose
if [ -x "$(command -v docker-compose)" ]; then
    echo "Update docker compose"
    # command
else
    echo "Install docker compose"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi
#clone repo and setup images
#git clone https://github.com/angelisimo/syschallenge.git

#start compose
docker-compose -f pythonapp/docker-compose.yml up -d

sleep 5
curl localhost/hello
