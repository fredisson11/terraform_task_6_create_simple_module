locals {
  name = "${var.prefix}${random_string.suffix.result}"
}