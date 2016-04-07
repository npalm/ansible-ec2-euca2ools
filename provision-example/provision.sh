#!/bin/bash

eval $(ssh-agent)
ssh-add keys/HANDSON.pem
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook ansible-playbooks/create-instances.yml

ec2.py

ansible-playbook ansible-playbooks/provision-docker-instances.yml
