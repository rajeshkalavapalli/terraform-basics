variable "ami-id" {
  type = string
  default = "ami-0f3c7d07486cad139"
}

variable "instance_name" {
  type = string
  default = "mongodb"
}

variable "tags" {
    type = map
        default= {
            Name = "hello terraform"
            Project = "roboshop"
            Environment = "dev"
            Component = "web"
            terraform = "true"
        }
    
  
}
