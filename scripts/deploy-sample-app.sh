#!/bin/bash

# This script deploys a sample application to a specified environment.

# Define variables
APP_NAME="sample-app"
DEPLOYMENT_ENVIRONMENT="production"

# Function to deploy the application
deploy_app() {
    echo "Deploying $APP_NAME to $DEPLOYMENT_ENVIRONMENT environment..."
    # Add deployment commands here (e.g., kubectl, docker, etc.)
    echo "$APP_NAME has been deployed successfully!"
}

# Execute the deployment
deploy_app