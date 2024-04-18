resource "aws_instance" "web" {
  count = 3
  ami           = var.ami-id
  instance_type = var.instance_name == "web" ? "t3.small" : "t2.small"
 # vpc_security_group_ids = [aws_security_group.roboshop.id]

  tags = var.tags
}