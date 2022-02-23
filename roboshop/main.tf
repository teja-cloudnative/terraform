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
  count     = length(var.COMPONENTS)
  source    = "./module"
  COMPONENT = var.COMPONENTS[count.index]
  PORT      = var.PORTS[count.index]
  MONITOR   = var.MONITOR[count.index]
}