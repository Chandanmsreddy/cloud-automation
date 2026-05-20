#!/bin/bash

source common.sh

REQUIRED_TOOLS=("terraform" "ansible" "jq" "ssh")

for tool in "${REQUIRED_TOOLS[@]}"
do
  command -v "$tool" >/dev/null 2>&1 || error_exit "$tool not installed"
done

log "All prerequisites installed"