#! /bin/bash

#### RANCHER SERVER INSTALL ####


#### BUT 1ST, Docker download...! ####
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 # 키를 받아온 것을 확인
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce=17.09.1~ce-0~ubuntu

# 랜처 도커 컨테이너 시작
docker run -d --restart=unless-stopped -p 8000:8080 rancher/server:stable
