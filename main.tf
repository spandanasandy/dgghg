provider "aws" {
 region = var.location
}

resource "aws_instance" "webinar" {
  ami = var.ami
instance_type = var.instance_type
key_name = var.key_name

tags = {
  Name = "with variables"
}
}

resource "aws_key_pair" "paaru" {
  key_name = "dev"
  public_key = file("./dev.pub")
}

resource "aws_vpc" "sandy" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = "pc"
  } 
}

resource "aws_subnet" "sub1" {
  cidr_block = var.sn1-cidr
  vpc_id = aws_vpc.sandy.id
  tags = {
    Name = "sub1"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block = var.sn2-cidr
  vpc_id = aws_vpc.sandy.id
  tags = {
    Name = "subnet2"
  }
}