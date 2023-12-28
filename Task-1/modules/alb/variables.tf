variable "region" {
  description = "AWS region"
}

variable "alb_name" {
  description = "Name for the Application Load Balancer"
}

variable "enable_deletion_protection" {
  description = "Enable deletion protection for the ALB"
  default     = false
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet IDs where the ALB will be placed"
}
