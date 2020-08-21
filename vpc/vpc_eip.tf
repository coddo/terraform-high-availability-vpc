# NAT Gateway EIPs

resource "aws_eip" "nat_gateway_a" {
  vpc = true

  tags = {
    Name = "NAT Gateway A"
  }
}

resource "aws_eip" "nat_gateway_b" {
  vpc = true

  tags = {
    Name = "NAT Gateway B"
  }
}

resource "aws_eip" "nat_gateway_c" {
  vpc = true

  tags = {
    Name = "NAT Gateway C"
  }
}
