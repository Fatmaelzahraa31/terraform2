resource "aws_internet_gateway" "ig" {
  vpc_id     = aws_vpc.main.id
  tags       = {
    Name = "myinternet-gateway"
  }
}





resource "aws_eip" "eip" {
    vpc = true
    depends_on = [
        aws_internet_gateway.ig
    ]
}

resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pbsub.id
   depends_on = [
    aws_internet_gateway.ig
   ]

  tags = {
    Name = "mynat-gateway"
  }

}