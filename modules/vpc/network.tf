resource "aws_vpc" "tdev" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = {
    Name = "dev-tvpc"
  }
}

output "vpc_id" {
  value       = aws_vpc.tdev.id
}


