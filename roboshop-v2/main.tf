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
    frontend  = { name = "frontend" }
    catalogue = { name = "catalogue" }
    mongodb   = { name = "mongodb" }
    user      = { name = "user" }
    redis     = { name = "redis" }
    cart      = { name = "cart" }
    mysql     = { name = "mysql" }
    shipping  = { name = "shipping" }
    payment   = { name = "payment" }
    rabbitmq  = { name = "rabbitmq" }
    dispatch  = { name = "dispatch" }
  }
}
resource "aws_instance" "instance" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(var.components, each.value["name"], null)
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
