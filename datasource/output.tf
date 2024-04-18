output "ami_id" {
  value = data.aws_ami.centos-8-Practice.id

}

output "ubuntu_ami_id" {
  value = data.aws_ami.ubuntu.id
}