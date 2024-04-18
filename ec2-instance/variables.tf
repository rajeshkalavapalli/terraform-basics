variable "sg-name" {
    type = string
  default = "allow_tls"
}

variable "ami-id" {
    type = string
  default = "ami-0f3c7d07486cad139"
}


variable "description" {
    type = string
default = "allow all security groups"
}


variable "from_port" {
    type = number
  default = "0"
}

variable "to_port" {
    type = number
  default = "0"
}

variable "protocol" {
    type = string
  default = "tcp"
}

variable "cidr_blocks" {
    type = list 
  default = ["0.0.0.0/0"]
}