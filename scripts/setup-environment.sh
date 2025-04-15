#!/bin/bash

# This script sets up the development environment for the DevOps onboarding project.

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install necessary tools
echo "Installing necessary tools..."

# Install Git
sudo apt-get install -y git

# Install Docker
sudo apt-get install -y docker.io

# Install Kubernetes tools (kubectl)
sudo snap install kubectl --classic

# Install Terraform
sudo apt-get install -y unzip
wget https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_linux_amd64.zip
unzip terraform_1.0.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/

# Clean up
rm terraform_1.0.0_linux_amd64.zip

echo "Development environment setup complete!"