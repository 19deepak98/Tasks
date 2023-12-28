variable "region" {
  description = "AWS region"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched"
}
