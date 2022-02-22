#module "frontend" {
#  source = "./frontend"
#}
#module "cart" {
#  source = "./cart"
#}
#module "catalogue" {
#  source = "./catalogue"
#}
#module "mongodb" {
#  source = "./mongodb"
#}
#module "mysql" {
#  source = "./mysql"
#}
#module "payment" {
#  source = "./payment"
#}
#module "rabbitmq" {
#  source = "./rabbitmq"
#}
#module "redis" {
#  source = "./redis"
#}
#module "shipping" {
#  source = "./shipping"
#}
#module "user" {
#  source = "./user"
#}

module "roboshop" {
  source    = "./module"
  COMPONENT = var.COMPONENTS
  PORT      = var.PORTS
  MONITOR   = var.MONITOR
}