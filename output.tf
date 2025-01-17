# outputs.tf
output "load_balancer_dns_name" {
  value = aws_lb.example_alb.dns_name
}
