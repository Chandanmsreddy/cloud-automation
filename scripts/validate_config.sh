#!/bin/bash

source common.sh

CONFIG_FILE="../config/infra.conf"

[ -f "$CONFIG_FILE" ] || error_exit "infra.conf missing"

source "$CONFIG_FILE"

[ -z "$CLOUD_PROVIDER" ] && error_exit "CLOUD_PROVIDER missing"

log "Configuration validated"