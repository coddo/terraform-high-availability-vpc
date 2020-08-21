# Private network

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 1, 1)
  availability_zone = local.az_a

  tags = {
    Name = "Private A"
  }
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 2, 0)
  availability_zone = local.az_b

  tags = {
    Name = "Private B"
  }
}

resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 2, 1)
  availability_zone = local.az_c

  tags = {
    Name = "Private C"
  }
}

# Public network

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc_ipv4_cidr_block_association.main_secondary_cidr.cidr_block, 1, 1)
  availability_zone = local.az_a

  tags = {
    Name = "Public A"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc_ipv4_cidr_block_association.main_secondary_cidr.cidr_block, 2, 0)
  availability_zone = local.az_b

  tags = {
    Name = "Public B"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc_ipv4_cidr_block_association.main_secondary_cidr.cidr_block, 2, 1)
  availability_zone = local.az_c

  tags = {
    Name = "Public C"
  }
}
