# AWS CloudFormation Basics

AWS CloudFormation is a service that helps you define and provision your AWS infrastructure as code. This allows you to automate the setup and management of your resources in a consistent and repeatable manner.

## What is CloudFormation?

CloudFormation enables you to use a template file to describe the resources you want to create, such as EC2 instances, S3 buckets, and IAM roles. The template is written in JSON or YAML format and serves as a blueprint for your infrastructure.

## Key Concepts

- **Stacks**: A stack is a collection of AWS resources that you create and manage as a single unit. You can create, update, or delete a stack using CloudFormation.

- **Templates**: Templates are JSON or YAML formatted text files that define the AWS resources you want to provision. They can include parameters, mappings, outputs, and resources.

- **Resources**: Resources are the AWS components that you want to create, such as EC2 instances, S3 buckets, and security groups.

- **Parameters**: Parameters allow you to pass values into your template at runtime, making it flexible and reusable.

- **Outputs**: Outputs are values that you can return from your stack, such as the URL of a created resource.

## Getting Started with CloudFormation

1. **Create a Template**: Start by writing a CloudFormation template that defines the resources you need.

2. **Deploy the Stack**: Use the AWS Management Console, AWS CLI, or SDKs to create a stack from your template.

3. **Manage the Stack**: You can update or delete the stack as needed, and CloudFormation will handle the changes for you.

## Example Template

Here is a simple example of a CloudFormation template that creates an S3 bucket:

```yaml
AWSTemplateFormatVersion: '2010-09-09'
Description: Simple S3 Bucket Creation

Resources:
  MyS3Bucket:
    Type: 'AWS::S3::Bucket'
    Properties:
      BucketName: my-example-bucket
```

## Conclusion

AWS CloudFormation is a powerful tool for managing your AWS infrastructure as code. By using CloudFormation, you can automate the deployment of your resources, reduce manual errors, and ensure consistency across your environments.