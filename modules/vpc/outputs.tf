# region
output "region" {
  value = var.region
}

# tag 
output "project_name" {
  value = var.project_name
}

# vpc ID
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# public subnet
output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}

# internet gateway
output "internet_gateway" {
  value = aws_internet_gateway.internet_gateway.id
}