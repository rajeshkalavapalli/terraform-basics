resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop.id]

  tags = {
    Name = "rajesh-ec2"
  }
}

resource "aws_security_group" "roboshop" { 
  name        = var.sg-name
  description = var.description
  #vpc_id      = aws_vpc.main.id
 
  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   # ipv6_cidr_blocks = ["::/0"]
  }
tags = {
    Name = "roboshop-sg"
  }

}