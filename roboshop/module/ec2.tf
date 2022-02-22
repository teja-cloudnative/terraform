resource "aws_instance" "web" {
  ami           = "ami-067ce86d1f553a611"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "var.COMPONENT"
  }
}
