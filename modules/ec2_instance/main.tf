provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = var.ebs_size
  }

  network_interface {
    device_index          = 0
    network_interface_id  = var.network_interface_id
  }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              EOF
}
