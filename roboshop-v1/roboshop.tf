resource "aws_instance" "frontend" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "frontend-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip] #We mention the private ip, we are doing resource reference here
}

resource "aws_instance" "mongodb" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "cart" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "cart"
  }
}


resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_instance" "user" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "user"
  }
}

resource "aws_instance" "mySQL" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "mySQL"
  }
}

resource "aws_instance" "rabbitMQ" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "rabbitMQ"
  }
}

resource "aws_instance" "shipping" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "payment" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_instance" "dispatch" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "dispatch"
  }
}