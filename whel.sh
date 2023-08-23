#!/bin/bash
# Configure server for access

yum install wget nano

useradd ericwalstrom
usermod -aG wheel ericwalstrom
usermod --shell /bin/bash ericwalstrom

mkdir /home/ericwalstrom/.ssh

wget -O /home/ericwalstrom/.ssh/authorized_keys https://raw.githubusercontent.com/XPEric/cloud-init/main/key.pub

rm -rf /etc/ssh/sshd_config.d/*

service sshd restart
