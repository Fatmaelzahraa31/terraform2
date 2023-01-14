resource "aws_vpc" "main" {
  cidr_block       = var.cidr
  tags = {
    Name = "mymain"
  }
}


resource "aws_subnet" "pbsub" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.pbsubnet
  map_public_ip_on_launch = "true" 
  availability_zone       = var.zone
  tags                    = {
    Name = "mypbsub"
  }
}


resource "aws_subnet" "ptsub" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.ptsubnet
  map_public_ip_on_launch = "false" 
  availability_zone       = var.zone
  tags                    = {
    Name = "myptsub"
  }
}
