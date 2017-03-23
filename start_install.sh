#!/bin/bash

# Install a new remote user with 'sudo' privileges
ansible-playbook initial_setup/main.yml

# Start main installation process
ansible-playbook main.yml
