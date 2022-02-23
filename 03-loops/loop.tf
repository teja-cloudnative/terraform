resource "null_resource" "new" {
  triggers = {
    abc = timestamp()
  }
  count = 3
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}