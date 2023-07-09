#!/bin/bash
# Configure server for access

useradd ericwalstrom
usermod -aG sudo ericwalstrom
usermod shell /bin/bash ericwalstrom

mkdir /home/ericwalstrom
mkdir /home/ericwalstrom/.ssh

wget -O /home/ericwalstrom/.ssh/authorized_keys https://raw.githubusercontent.com/XPEric/cloud-init/main/key.pub?token=GHSAT0AAAAAACE36EF5MTNL2WCOJOKXM4TSZFKFH7A

chown -R ericwalstrom:ericwalstrom /home/ericwalstrom

rm -rf /etc/ssh/sshd_config.d/*

service sshd restart
