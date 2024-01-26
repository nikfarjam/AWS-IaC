resource "aws_vpc" "${var.prefix}-vpc" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name        = "${var.prefix}-vpc-${var.aws_region}"
    environment = var.environment
  }
}

resource "aws_subnet" "${var.prefix}_public_subnet" {
  vpc_id                  = aws_vpc.${var.prefix}-vpc.id
  cidr_block              = var.public_cidrs
  map_public_ip_on_launch = true

  tags = {
    name = "${var.prefix}-public-subnet-${var.aws_region}"
    environment = var.environment
  }
}

resource "aws_subnet" "mtc_private_subnet" {
  vpc_id                  = aws_vpc.${var.prefix}-vpc.id
  cidr_block              = var.private_cidrs
  map_public_ip_on_launch = false

  tags = {
    name = "${var.prefix}-private-subnet-${var.aws_region}"
    environment = var.environment
  }
}

resource "aws_security_group" "security_group_http" {
  name = "${var.prefix}-security-group-http"

  vpc_id =  aws_vpc.${var.prefix}-vpc.id

  ingress {
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

  tags = {
    name = "${var.prefix}-security-group-http"
    environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "security_group_https" {
  name = "${var.prefix}-security-group-https"

  vpc_id =  aws_vpc.${var.prefix}-vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "${var.prefix}-security-group-http"
    environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "security_group_ssh" {
  name = "${var.prefix}-security-group-ssh"

  vpc_id =  aws_vpc.${var.prefix}-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "${var.prefix}-security-group-ssh"
    environment = var.environment
  }

  lifecycle {
    create_before_destroy = true
  }
}
