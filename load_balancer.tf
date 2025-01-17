# load_balancer.tf

resource "aws_lb" "example_alb" {
  name               = "example-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = data.aws_subnets.default.ids  # Use the updated data source for subnet IDs

  enable_deletion_protection = false

  tags = {
    Name = "Dev team"
  }
}
