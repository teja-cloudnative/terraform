output "sample" {
  value = var.sample
}

output "list1" {
  value = var.list[0]
}

output "list2" {
  value = var.list[1]
}

output "map_sting" {
  value = var.map["string"]
}

output "map_number" {
  value = var.map["number"]
}

output "map_boolean" {
  value = var.map["boolean"]
}

output "new" {
  value = var.new
}

output "cli" {
  value = var.cli
}

output "shell" {
  value = var.shell
}