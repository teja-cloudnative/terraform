variable "COMPONENT" {
  default = cart
}

module "roboshop" {
  source = "../module"
  COMPONENT = "cart"
  PORT = 8080
}