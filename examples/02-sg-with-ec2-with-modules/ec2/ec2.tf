resource "aws_instance" "web" {
  ami           = "ami-067ce86d1f553a611"
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.SG_ID]
  tags = {
    Name = "HelloWorld"
  }
}

variable "SG_ID" {}