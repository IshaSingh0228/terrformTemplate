resource "aws_subnet" "tsub" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-tsubnet"
  }
}

output "subnet_id" {
  value       = aws_subnet.tsub.id
}
