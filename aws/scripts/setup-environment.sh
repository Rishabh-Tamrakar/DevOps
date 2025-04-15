#!/bin/bash

# This script sets up the development environment for AWS-related projects.
# It installs necessary tools and configures the environment for seamless AWS development.

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install AWS CLI
echo "Installing AWS CLI..."
sudo apt-get install -y awscli

# Install Terraform
echo "Installing Terraform..."
sudo apt-get install -y unzip
TERRAFORM_VERSION="1.0.0" # Specify the desired Terraform version
wget "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
sudo mv terraform /usr/local/bin/
rm "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install other necessary tools (if any)
# Add additional installations as needed

echo "Development environment setup complete!"