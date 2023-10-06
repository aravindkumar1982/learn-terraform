variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "security_groups" {
  default = [ "sg-0e95806cd6cb8f2af"]
}

variable "instance_type" {
  default = "t3.small"
}

variable "zone_id" {
  default = "Z01341252DR79YJVYRDP9"
}

variable "components" {
  default = {
    frontend  = {}
    catalogue = {}
    mongodb   = {}
    user      = {}
    redis     = {}
    cart      = {}
    mysql     = {}
    shipping  = {}
    payment   = {}
    rabbitmq  = {}
    dispatch  = {}
  }
}
resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(var.components, each.key, null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = lookup("${component}.devopsak.tech")
  type    = "A"
  ttl     = 30
  records = [lookup(aws_instance.instance, each.key[""])]
}
