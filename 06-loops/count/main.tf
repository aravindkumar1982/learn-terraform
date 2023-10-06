variable "components" {
  default = ["frontend", "mongodb", "catalogue",] //Here input is a list
}

/*
resource "aws_instance" "component" {

  count = length(var.components) //count is a key word and works as loop

  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]
*/

  tags = {
    Name = element(var.components, count.index) //element is keyword used to verify the indexing inside the list[].
  }

