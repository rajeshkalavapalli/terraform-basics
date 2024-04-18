data "aws_ami" "centos-8-Practice" {
owners           = ["973714476881"]
most_recent      = true

    filter {
        name   = "name"
        values = ["Centos-8-DevOps-Practice"]
    }

    # filter {
    #     name   = "root-device-type"
    #     values = ["EBS"]
    # }

    # filter {
    #     name   = "virtualization-type"
    #     values = ["hvm"]
    # }

}


data "aws_ami" "ubuntu" {
owners           = ["596061404617"]
most_recent      = true

    filter {
        name   = "name"
        values = ["Ubuntu_20.04-x86_64-SQL_2022_Standard-2023.10.16"]
    }

    # filter {
    #     name   = "root-device-type"
    #     values = ["EBS"]
    # }

    # filter {
    #     name   = "virtualization-type"
    #     values = ["hvm"]
    # }

}

