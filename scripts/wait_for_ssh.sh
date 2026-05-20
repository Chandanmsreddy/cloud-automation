#!/bin/bash

source common.sh

CONFIG_FILE="../config/infra.conf"

source "$CONFIG_FILE"

IPS=$(cd ../generated && terraform output -json instance_public_ips | jq -r '.[]')

for ip in $IPS
do
  log "Waiting for SSH on $ip"

  until ssh -o StrictHostKeyChecking=no \
    -i ~/.ssh/id_rsa \
    $SSH_USER@$ip "echo SSH OK" >/dev/null 2>&1
  do
    sleep 10
  done

  log "SSH successful on $ip"
done