#resource "aws_instance" "web" {
#  ami           = "ami-067ce86d1f553a611"
#  instance_type = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.allow_app.id]
#  tags = {
#    Name = "var.COMPONENT"
#  }
#}

resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = "ami-067ce86d1f553a611"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT
  }

}