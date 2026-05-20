#!/bin/bash

source common.sh

CONFIG_FILE="../config/infra.conf"

source "$CONFIG_FILE"

INVENTORY="../ansible/inventory.ini"

echo "[servers]" > "$INVENTORY"

IPS=$(cd ../generated && terraform output -json instance_public_ips | jq -r '.[]')

for ip in $IPS
do
  echo "$ip ansible_user=$SSH_USER ansible_ssh_private_key_file=~/.ssh/id_rsa" >> "$INVENTORY"
done

log "Ansible inventory generated"