#!/bin/bash

#sudo apt-get install python-software-properties -y
#sudo add-apt-repository ppa:rquillo/ansible -y
#sudo apt-get update
#sudo apt-get install ansible -y

ansible-playbook -c local -i hosts vm.yml
