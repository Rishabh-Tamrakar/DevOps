#!/bin/bash

# This script deploys a sample application to AWS using Elastic Beanstalk.

# Variables
APPLICATION_NAME="SampleApp"
ENVIRONMENT_NAME="SampleApp-env"
S3_BUCKET="sample-app-bucket-$(date +%s)"
ZIP_FILE="sample-app.zip"

# Create an S3 bucket for the application
aws s3 mb s3://$S3_BUCKET

# Package the application
zip -r $ZIP_FILE ./*

# Upload the application to S3
aws s3 cp $ZIP_FILE s3://$S3_BUCKET/

# Create an Elastic Beanstalk application
aws elasticbeanstalk create-application --application-name $APPLICATION_NAME

# Create an Elastic Beanstalk environment
aws elasticbeanstalk create-environment --application-name $APPLICATION_NAME --environment-name $ENVIRONMENT_NAME --solution-stack-name "64bit Amazon Linux 2 v5.4.0 running Python 3.8" --version-label "v1" --option-settings file://options.json

# Clean up
rm $ZIP_FILE
aws s3 rb s3://$S3_BUCKET --force

echo "Sample application deployed successfully!"