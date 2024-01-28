data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

# resource "aws_key_pair" "mtc_auth" {
#   key_name   = var.key_name
#   public_key = file(var.public_key_path)
# }

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type #"t2.micro"
  # key_name               = aws_key_pair.mtc_auth.id
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  tags = {
    name        = "${var.prefix}-ec2-web"
    environment = var.environment
  }

  root_block_device {
    volume_size = var.vol_size
  }
}