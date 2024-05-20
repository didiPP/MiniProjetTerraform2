#toto1

module "ebs_volume" {
  source             = "../modules/ebs_volume"
  availability_zone  = var.availability_zone
  size               = var.ebs_size
  name               = var.ebs_name
}

module "security_group" {
  source      = "../modules/security_group"
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id
}

module "public_ip" {
  source = "../modules/public_ip"
}

resource "aws_network_interface" "main" {
  subnet_id       = var.subnet_id
  security_groups = [module.security_group.id]
}

module "ec2_instance" {
  source              = "../modules/ec2_instance"
  ami                 = var.ami
  instance_type       = var.instance_type
  instance_name       = var.instance_name
  ebs_size            = var.ebs_size
  network_interface_id = aws_network_interface.main.id
  region              = var.region
}

output "public_ip" {
  value = module.public_ip.public_ip
}