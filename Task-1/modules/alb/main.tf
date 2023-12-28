resource "aws_lb" "my_alb" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.vpc.allow_all_sg_id]
  subnets            = var.subnet_ids
}

output "alb_dns_name" {
  value = aws_lb.my_alb.dns_name
}
