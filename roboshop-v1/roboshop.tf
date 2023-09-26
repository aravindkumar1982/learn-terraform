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

resource "aws_route53_record" "mongodb" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "mongodb-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
  }

resource "aws_instance" "catalogue" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "catalogue"
  }
}
  resource "aws_route53_record" "catalogue" {
    zone_id = "Z01341252DR79YJVYRDP9"
    name    = "catalogue-dev.devopsak.tech"
    type    = "A"
    ttl     = 30
    records = [aws_instance.catalogue.private_ip]
  }


resource "aws_instance" "cart" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "cart-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "redis" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "redis-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "user-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "mySQL" {
  ami                     = "ami-03265a0778a880afb"
  instance_type           = "t3.small"
  vpc_security_group_ids  =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "mySQL"
  }
}

resource "aws_route53_record" "mySQL" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "mySQL-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mySQL.private_ip]
}


resource "aws_instance" "rabbitMQ" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "rabbitMQ"
  }
}

resource "aws_route53_record" "rabbitMQ" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "rabbitMQ-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitMQ.private_ip]
}

resource "aws_instance" "shipping" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "shipping-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "payment-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}


resource "aws_instance" "dispatch" {
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids =  [ "sg-0e95806cd6cb8f2af" ]

  tags = {
    Name = "dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z01341252DR79YJVYRDP9"
  name    = "dispatch-dev.devopsak.tech"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}
