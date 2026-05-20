#!/bin/bash

LOG_DIR="../logs"

mkdir -p "$LOG_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

LOG_FILE="$LOG_DIR/deploy_$TIMESTAMP.log"

log() {
  echo -e "\n[$(date)] $1" | tee -a "$LOG_FILE"
}

error_exit() {
  echo -e "\n[ERROR] $1" | tee -a "$LOG_FILE"
  exit 1
}