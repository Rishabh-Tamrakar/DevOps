#!/bin/bash

# Variables
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-key-pair-name"
SECURITY_GROUP="your-security-group"
AMI_ID="ami-0c55b159cbfafe1f0" # Example AMI ID for Amazon Linux 2
REGION="us-east-1"

# Create a new EC2 instance
aws ec2 run-instances --image-id $AMI_ID --count 1 --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --security-groups $SECURITY_GROUP --region $REGION

echo "EC2 instance launched successfully."