#!/bin/bash

set -e

cd "$(dirname "$0")"

source common.sh

log "STARTING DEPLOYMENT"

bash check_prerequisites.sh

bash validate_config.sh

bash generate_tf.sh

bash terraform_init.sh

bash terraform_validate.sh

bash terraform_plan.sh

bash terraform_apply.sh

bash wait_for_ssh.sh

bash generate_ansible_inventory.sh

bash verify_instances.sh

cd ../ansible

ansible-playbook playbooks/validate.yml

ansible-playbook playbooks/docker.yml

ansible-playbook playbooks/nginx.yml

cd ../scripts

bash verify_nginx.sh

log "DEPLOYMENT SUCCESSFUL"