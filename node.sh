#! /bin/bash

#### RANCHER NODE INSTALL ####


#### BUT 1ST, Docker download...! ####
sudo apt update
sudo apt upgrade
sudo apt install -y docker.io
systemctl start docker
systemctl enable docker

#### docker-compose 인스톨 ####
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
