# Automation Script to automate EC2 Setup

#!/bin/bash

# Update system and install dependencies
sudo yum update -y
sudo yum install -y python3 amazon-cloudwatch-agent

# Create config directory and copy config file
sudo mkdir -p /opt/aws/amazon-cloudwatch-agent/etc/
sudo cp cloudwatch-config.json /opt/aws/amazon-cloudwatch-agent/etc/

# Start CloudWatch Agent
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/etc/cloudwatch-config.json -s

# Start Python log generator
python3 app.py
