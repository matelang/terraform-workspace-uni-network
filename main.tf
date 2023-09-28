provider "aws" {
  region = "eu-central-1"
}

module "uni-network" {
  source  = "app.terraform.io/matelang/uni-network/module"
  version = "1.0.1"

  name        = var.name
  environment = var.environment
  cidr        = var.cidr
}

variable "name" {
  type = string
}

variable "environment" {
  type = string
}

variable "cidr" {
  type = string
}
