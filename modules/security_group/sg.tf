resource "aws_security_group" "tSG" {
  name        ="tSG"
  description = "Allow TLS inbound and outbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH aalowed from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "8080 aalowed"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "security_group_id" {
  value       = aws_security_group.tSG.id
}