# Centralized Module For EC2 Instance

resource "aws_instance" "web" {
    # ami = "ami-0ded8326293d3201b"
    ami = data.aws_ami.FetchAMI.id
    instance_type = var.Env-InstanceType
    tags = {
        Name = var.OS-Tag
    }

}

#  Retrive AMI ID
data "aws_ami" "FetchAMI" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
        name = "architecture"
        values = ["x86_64"]    
  }
}

