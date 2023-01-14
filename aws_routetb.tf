resource "aws_route_table" "pbroute-table" {
  vpc_id       = aws_vpc.main.id
  route {
    cidr_block = var.pbroute
    gateway_id = aws_internet_gateway.ig.id
  }
  tags         = {
    Name = "mypbroute-table"
  }
}

resource "aws_route_table_association" "pbroute-table-assoc" {
  subnet_id      = aws_subnet.pbsub.id
  route_table_id = aws_route_table.pbroute-table.id
}



resource "aws_route_table" "ptroute-table" {
  vpc_id       = aws_vpc.main.id
  route {
    cidr_block = var.ptroute
    gateway_id = aws_nat_gateway.nat-gateway.id
  }
  tags         = {
    Name = "myptroute-table"
  }
}

resource "aws_route_table_association" "ptroute-table-assoc" {
  subnet_id      = aws_subnet.ptsub.id
  route_table_id = aws_route_table.ptroute-table.id
}

