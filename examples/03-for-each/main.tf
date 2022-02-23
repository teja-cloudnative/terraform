variable "COMP" {
  default = [
    {
      name    = "frontend"
      port    = 80
      monitor = "yes"
    },
    {
      name    = "cart"
      port    = 8080
      monitor = "yes"
    }
  ]
}

resource "null_resource" "null" {
  for_each = var.COMP
  triggers = {
    abc    = timestamp()
  }
  provisioner "local-exec" {
    command = "Component Name = ${each.value["name"]}"
  }
}