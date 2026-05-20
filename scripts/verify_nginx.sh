#!/bin/bash

source common.sh

IPS=$(cd ../generated && terraform output -json instance_public_ips | jq -r '.[]')

for ip in $IPS
do
  curl -I "http://$ip" || error_exit "NGINX validation failed for $ip"
done

log "NGINX validation successful"