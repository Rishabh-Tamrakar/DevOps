#!/bin/bash

# This script creates an IAM user in AWS with specified permissions.

# Variables
USER_NAME=$1
POLICY_ARN=$2

# Check if user name is provided
if [ -z "$USER_NAME" ]; then
  echo "Usage: $0 <username> [policy-arn]"
  exit 1
fi

# Create IAM user
aws iam create-user --user-name "$USER_NAME"

# Attach policy if provided
if [ ! -z "$POLICY_ARN" ]; then
  aws iam attach-user-policy --user-name "$USER_NAME" --policy-arn "$POLICY_ARN"
  echo "Policy $POLICY_ARN attached to user $USER_NAME."
else
  echo "User $USER_NAME created without any attached policies."
fi

# Create access keys for the user
aws iam create-access-key --user-name "$USER_NAME" > "${USER_NAME}_access_key.json"
echo "Access keys for user $USER_NAME created and saved to ${USER_NAME}_access_key.json."