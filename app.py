# Python script to generate logs for CloudWatch from an EC2 instance

import time
import logging

# Configure logging
logging.basicConfig(
    filename='/var/log/myapp.log',
    level=logging.INFO,
    format='%(asctime)s - %(message)s'
)

print("Starting Python log generator...")

while True:
    logging.info("Sample log entry from EC2 instance")
    time.sleep(10)
