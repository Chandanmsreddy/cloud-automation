# ☁️ Cloud Automation

🚀 Cloud Automation is a cloud-agnostic DevOps project designed to automate infrastructure provisioning and deployment using Terraform, Ansible, Docker, and GitHub Actions.

It supports multi-cloud deployment and follows Infrastructure as Code (IaC) principles for scalable and automated cloud management.

---

# 📌 Technologies Used

✅ AWS  
✅ GCP  
✅ Terraform  
✅ Ansible  
✅ Docker  
✅ GitHub Actions  
✅ NGINX  
✅ Linux Shell Scripting  

---

# ✨ Features

✔️ Cloud Agnostic Deployment  
✔️ Infrastructure as Code (IaC)  
✔️ Automated Server Configuration  
✔️ Dynamic Inventory Generation  
✔️ Dockerized NGINX Deployment  
✔️ CI/CD Automation using GitHub Actions  
✔️ Automated Validation and Deployment  
✔️ Automated Infrastructure Cleanup  
✔️ Modular and Scalable Architecture  

---

# 🏗️ Project Workflow

```text
1️⃣ Terraform provisions cloud infrastructure

2️⃣ Dynamic inventory is generated automatically

3️⃣ Ansible configures servers and installs dependencies

4️⃣ Docker deploys NGINX containers

5️⃣ GitHub Actions automates CI/CD workflow
```

---

# ⚙️ Prerequisites

Install the following tools before starting:

```bash
terraform
ansible
docker
git
jq
awscli OR gcloud
```

---

# 🔐 AWS Authentication

```bash
aws configure
```

---

# 🔐 GCP Authentication

```bash
gcloud auth application-default login
```

---

# 📥 Clone Repository

```bash
git clone https://github.com/Chandanmsreddy/cloud-automation.git
```

---

# 📂 Move to Project Directory

```bash
cd cloud-automation
```

---

# 🔧 Setup Project

Give execute permissions:

```bash
chmod +x scripts/*.sh
```

---

# 🚀 Deploy Infrastructure

```bash
cd scripts

./full_deploy.sh
```

---

# 🧹 Destroy Infrastructure

```bash
./cleanup.sh
```

---

# 🌐 Validate NGINX Deployment

```bash
curl http://PUBLIC_IP
```

---

# ✅ Validate Ansible Connectivity

```bash
cd ansible

ansible all -m ping
```

---

# 🔄 GitHub Actions CI/CD

GitHub Actions automates:

✅ Terraform Init  
✅ Terraform Validate  
✅ Terraform Plan  
✅ Infrastructure Validation  
✅ Deployment Workflow  

---

# 📁 Project Structure

```bash
cloud-automation/
│
├── ansible/
├── scripts/
├── generated/
├── .github/workflows/
├── Dockerfile
├── docker-compose.yml
├── README.md
└── .gitignore
```

---

# 👨‍💻 Author

## Chandan M S

🔗 GitHub:
https://github.com/Chandanmsreddy
