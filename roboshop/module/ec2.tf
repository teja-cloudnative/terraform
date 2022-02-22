//resource "aws_instance" "ec2" {
//  ami                    = "ami-0d997c5f64a74852c"
//  instance_type          = "t3.micro"
//  vpc_security_group_ids = [aws_security_group.allow_app.id]
//
//  tags = {
//    Name = var.COMPONENT
//  }
//}

resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = "ami-067ce86d1f553a611"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT
  }

}

resource "aws_ec2_tag" "ec2-name-tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Name"
  value       = var.COMPONENT
}

resource "aws_ec2_tag" "ec2-monitor-tag" {
  resource_id = aws_spot_instance_request.cheap_worker.spot_instance_id
  key         = "Monitor"
  value       = var.MONITOR
}

resource "null_resource" "ansible-apply" {
  triggers = {
    abc = timestamp()
  }
  provisioner "remote-exec" {
    connection {
      host     = aws_spot_instance_request.cheap_worker.private_ip
      user     = "root"
      password = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/raghudevopsb62/ansible roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev"
    ]
  }
}