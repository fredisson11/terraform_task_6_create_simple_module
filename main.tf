provider "azurerm" {
  subscription_id = local.subscription_id
  features {}
}

module "resource_group_storage" {
  source   = "fredisson11/resource_group_storage/fredisson11"
  version  = "1.0.0"
  prefix   = "task6"
  location = "West Europe"
}