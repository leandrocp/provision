#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y

cd ~
git clone https://github.com/leandrocp/provision.git
cd provision

sudo apt-get purge git -y
sudo apt-get autoremove -y 

ansible-playbook -c local -i hosts vm.yml

