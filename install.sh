#!/bin/bash
vagrant ssh-config > ssh_config
ansible-playbook -i hosts --ssh-common-args "-F ./ssh_config" ufw.yml
