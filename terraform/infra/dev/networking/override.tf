variable "vpc_name" {
  default = "funstuff-dev"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
  default = ["us-west-2a", "us-west-2b"]
}

variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  default = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "environment" {
  default = "dev"
}
