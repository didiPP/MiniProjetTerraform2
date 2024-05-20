resource "aws_eip" "this" {
  domain = "vpc"
}

output "public_ip" {
  value = aws_eip.this.public_ip
}
