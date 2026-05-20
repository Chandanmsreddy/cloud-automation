#!/bin/bash

set -e

cd ../ansible

ansible-playbook playbooks/cleanup.yml

cd ../scripts

bash terraform_destroy.sh