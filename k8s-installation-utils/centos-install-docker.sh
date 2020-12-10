#!/bin/sh

# Remove old version
yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine

# Set up repo
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install
yum install docker-ce docker-ce-cli containerd.io

# Start
systemctl start docker

# Up on boot
systemctl enable docker

