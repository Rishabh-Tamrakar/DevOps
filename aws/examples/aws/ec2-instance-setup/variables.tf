variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Example AMI ID for Amazon Linux 2
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
}

variable "region" {
  description = "The AWS region to launch the EC2 instance in"
  default     = "us-east-1"
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
}