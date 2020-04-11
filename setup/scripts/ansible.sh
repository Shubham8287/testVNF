#!/bin/bash -eux

# Install EPEL repository.
yum -y install EPEL

# Install Ansible.
yum -y install ansible