resource "aws_nat_gateway" "main_a" {
  depends_on = [aws_internet_gateway.main]

  allocation_id = aws_eip.nat_gateway_a.id
  subnet_id     = aws_subnet.public_a.id

  tags = {
    Name = "NGW A"
  }
}

resource "aws_nat_gateway" "main_b" {
  depends_on = [aws_internet_gateway.main]

  allocation_id = aws_eip.nat_gateway_b.id
  subnet_id     = aws_subnet.public_b.id

  tags = {
    Name = "NGW B"
  }
}

resource "aws_nat_gateway" "main_c" {
  depends_on = [aws_internet_gateway.main]

  allocation_id = aws_eip.nat_gateway_c.id
  subnet_id     = aws_subnet.public_c.id

  tags = {
    Name = "NGW C"
  }
}
