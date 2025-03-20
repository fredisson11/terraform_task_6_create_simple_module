provider "azurerm" {
  subscription_id = "642ca831-5088-4242-9a1a-c7b56ede019b"
  features {}
}

module "resource_group_storage" {
  source  = "fredisson11/resource_group_storage/fredisson11"
  version = "1.0.0"
  prefix   = "task6"
  location = "West Europe"
}