#!/bin/bash

# This script creates an S3 bucket in AWS.

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <bucket-name> <region>"
    exit 1
fi

BUCKET_NAME=$1
REGION=$2

# Create the S3 bucket
aws s3api create-bucket --bucket "$BUCKET_NAME" --region "$REGION" --create-bucket-configuration LocationConstraint="$REGION"

# Check if the bucket was created successfully
if [ $? -eq 0 ]; then
    echo "S3 bucket '$BUCKET_NAME' created successfully in region '$REGION'."
else
    echo "Failed to create S3 bucket '$BUCKET_NAME'."
    exit 1
fi

# Optionally, enable versioning on the bucket
aws s3api put-bucket-versioning --bucket "$BUCKET_NAME" --versioning-configuration Status=Enabled

echo "Versioning enabled on bucket '$BUCKET_NAME'."