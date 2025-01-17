# variables.tf
data "aws_vpc" "vpc1" {
  # Configuration for the first VPC
}

# main.tf
data "aws_vpc" "vpc2" {
  # Configuration for the second VPC
}
