#!/bin/bash

dnf update -y

dnf install docker -y
systemctl start docker
systemctl enable docker

curl -L "https://github.com/docker/compose/releases/download/v2.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

usermod -aG docker ec2-user

cd /home/ec2-user
git clone https://github.com/sujith-eag/mean-crud-app.git
cd mean-crud-app

dnf install -y curl wget


reboot