# data.tf

# Fetch default VPC details (if applicable)
data "aws_vpc" "default" {
  default = true  # Assuming you're using the default VPC
}

# Get all subnets in the VPC
data "aws_subnets" "default" {
}

# Output the list of subnet IDs
output "subnet_ids" {
  value = data.aws_subnets.default.ids
}
