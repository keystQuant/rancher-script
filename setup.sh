#! /bin/bash

#### RANCHER SERVER INSTALL ####


#### BUT 1ST, Docker download...! ####
sudo apt update
sudo apt upgrade
sudo apt install -y docker.io
systemctl start docker
systemctl enable docker

# volumes 설정 해주기: 데이터 저장
HOST_VOLUME=$HOME/rancher-data/mysql
mkdir -p $HOST_VOLUME

# 랜처 도커 컨테이너 시작
sudo docker run -d -v $HOST_VOLUME:/var/lib/mysql --restart=unless-stopped -p 8080:8080 rancher/server
