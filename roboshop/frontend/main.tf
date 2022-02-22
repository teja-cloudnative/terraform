module "roboshop" {
  source    = "../module"
  COMPONENT = "frontend"
  PORT      = 80
  MONITOR   = "yes"
}