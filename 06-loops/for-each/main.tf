variable "components" {
  default = {
    catalogue = { name = "catalogue_sg" } //Here input is a map. we have key and values
    mongodb   = { name = "mongodb_sg"}
  }
}

resource "aws_security_group" "allow_tls" {
  for_each  = var.components
  name      = lookup(var.components, each.value["name"], null )

}