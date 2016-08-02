#!/usr/bin/env bash

#Setup ssh password less connection for local 
#current user.
#Sudo privilege is needed to run this script and
#Ubuntu is set as an example. 
#

echo "install ssh on Ubuntu os "
sudo apt-get install rsync
sudo apt-get install ssh

echo "start sshd"
sudo servie sshd start

echo "generate keys"
ssh-keygen –t rsa –P ''
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

#sudo vi /etc/ssh/sshd_config
#reomve comments for Athen...

echo "restart sshd"
sudo service sshd restart

echo "Verifing, ssh to locahost"
ssh localhost
