# Cloud Agnostic Terraform + Ansible Automation

Supports:

- AWS
- GCP
- Terraform
- Ansible
- Docker
- NGINX

---

# Features

- Single config file
- Cloud agnostic deployment
- Dynamic inventory generation
- Automated validation
- Dockerized NGINX deployment
- Automated cleanup

---

# Prerequisites

Install:

- terraform
- ansible
- jq
- awscli OR gcloud

---

# AWS Authentication

aws configure

---

# GCP Authentication

gcloud auth application-default login

---

# Setup

chmod +x scripts/*.sh

---

# Deploy

cd scripts

./full_deploy.sh

---

# Destroy

./cleanup.sh

---

# Validate NGINX

curl http://PUBLIC_IP

---

# Validate Ansible

cd ansible

ansible all -m ping# cloud-automation
