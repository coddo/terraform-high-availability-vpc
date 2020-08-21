resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/22"

  tags = {
    Name = "Main VPC"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "main_secondary_cidr" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "100.64.0.0/22"
}
