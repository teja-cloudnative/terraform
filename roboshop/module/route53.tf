resource "aws_route53_record" "www" {
  zone_id = "Z10117842M4YD5HYCTC5K"
  name    = "${var.COMPONENT["name"]}-dev"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}
