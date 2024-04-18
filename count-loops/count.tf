resource "aws_instance" "web" {
  count = length(var.instance_name)
  ami           = var.ami-id
  instance_type = var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "mysql" ? "t3.small" : "t2.small"

  tags = {
    Name = var.instance_name[count.index]
  }
}

# aws route 53 records 

resource "aws_route53_record" "www" {
  count = length(var.instance_name)
  zone_id = var.hostedzone 
  name    = "${var.instance_name[count.index]}.bigmatrix.in"
  type    = "A"
  ttl     = 1
  records = [var.instance_name[count.index] == "web" ?  aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
  
}


