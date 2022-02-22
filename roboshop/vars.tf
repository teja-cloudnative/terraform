variable "COMPONENTS" {
  default = ["cart", "catalogue", "frontend", "mongodb", "mysql", "payment", "rabbitmq", "redis", "shipping", "user"]
}

variable "PORTS" {
  default = [8080, 8080, 80, 27017, 3306, 8080, 5672, 6379, 8080, 8080]
}

variable "MONITOR" {
  default = ["yes", "yes", "yes", "no", "no", "yes", "no", "no", "yes", "yes"]
}