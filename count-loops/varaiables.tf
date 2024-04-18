variable "ami-id" {
  type = string
  default = "ami-0f3c7d07486cad139"
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

variable "instance_name" {
    type = list 
    default = [
        "mongodb",
        "web",
        "mysql"
    ]
}

