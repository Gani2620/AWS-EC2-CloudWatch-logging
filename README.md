# EC2 + CloudWatch Logging System (Python)

## Overview
This project demonstrates how to build a basic logging system using AWS EC2 and CloudWatch. It includes a Python-based log-generating app deployed on an Amazon Linux EC2 instance, with logs pushed to CloudWatch via the CloudWatch Agent. A custom dashboard visualizes the log metrics, and the entire setup is automated using a bash script.

##  Setup Instructions

### 1. Launch EC2 Instance
- **AMI**: Amazon Linux 2023
- **Instance Type**: t2.micro (Free Tier eligible)
- **Security Group**: Allow SSH (port 22) and outbound internet access
- **IAM Role**: Attach a role with `CloudWatchAgentServerPolicy`

### 2. Clone the Repository (Optional)
If you want to clone this repo to your EC2 instance:
```bash
git clone https://github.com/Gani2620/AWS-EC2-CloudWatch-logging.git
cd ec2-cloudwatch-logging-system

### 3. Run the Automation Script
If you're on the EC2 instance and have cloned this repository, run:

bash setup.sh

This will:

 Update the system

 Install Python and CloudWatch Agent

 Apply the CloudWatch config

 Start the Python log generator (app.py)

## 📂 File Descriptions

| File                    | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `app.py`                | Python script that writes logs to `/var/log/myapp.log` every 10 seconds     |
| `cloudwatch-config.json`| CloudWatch Agent config that tells it to collect logs from the app log file |
| `setup.sh`              | Bash script to install dependencies, configure CloudWatch, and start logging|
| `README.md`             | Project overview and setup instructions                                     |


