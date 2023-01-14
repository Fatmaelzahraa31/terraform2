resource "aws_security_group" "security-group" {
  vpc_id     = aws_vpc.main.id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = -1
    cidr_blocks      = [var.cidr-block]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.cidr-block]
  }
  tags = {
    Name = "mysecurity-group"
  }
}