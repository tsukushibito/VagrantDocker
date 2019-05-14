#!/bin/sh
#Tool
sudo yum -y install vim git

if ! type docker > /dev/null 2>&1; then
#Docker
sudo curl -sSL https://get.docker.com/ | sh
sudo systemctl enable docker
sudo gpasswd -a vagrant docker
sudo systemctl start docker
fi

if ! type docker-compose > /dev/null 2>&1; then
#Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
fi
