#variable "sample" {}

variable "sample" {
  default = "NewHello"
}

#String Datatype
variable "sample1" {
  default = "Hello World"
}
##Single quotes are not supported in Terraform

#Number Datatype
variable "sample2" {
  default = 100
}

#Boolean Datatype
variable "sample3" {
  default = true
}

variable "list" {
  default = ["Hello World", 90, true]
}
# List can have values of different data types

variable "map" {
  default = {
    string = "Hello World",
    number = 99,
    boolean = true
  }
}

#Variable values from tfvars
variable "new" { }

#Varibale from CLI
variable "cli" { }

#Variable from Shell
variable "shell" {}