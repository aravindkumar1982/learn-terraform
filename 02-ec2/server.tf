#Navigate to terraform resource providers

data "aws_ami" "Centos-8" {
  most_recent = true

  filter {
    name   = "name"
    values = ["973714476881/Centos-8-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}




