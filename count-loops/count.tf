resource "aws_instance" "web" {
  count = length(var.instance_name)
  ami           = var.ami-id
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ? "t3.small" : "t2.small"

  tags = {
    Name = var.instance_name[count.index]
  }
}