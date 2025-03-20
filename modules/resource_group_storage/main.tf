resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}${random_string.suffix.result}"
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "${var.prefix}${random_string.suffix.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
