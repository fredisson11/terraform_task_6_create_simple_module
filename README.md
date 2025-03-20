# Terraform Module: Resource Group and Storage Account

This Terraform module creates an Azure Resource Group and an Azure Storage Account. It also outputs the resource group and storage account details.

## Usage

```hcl
module "resource_group_storage" {
  source  = "path_to_this_module"
  prefix  = "example"  # Prefix for resource names
  location = "East US"  # The Azure region where resources will be created
}
```

## Inputs

| Name      | Description                                 | Type   | Default   |
|-----------|---------------------------------------------|--------|-----------|
| `prefix`  | Prefix for resource names.                  | `string` | `"example"` |
| `location`| The Azure region for resource deployment.   | `string` | `"East US"` |

## Outputs

| Name                                      | Description                                  |
|-------------------------------------------|----------------------------------------------|
| `resource_group_id`                       | The ID of the created Resource Group.        |
| `resource_group_name`                     | The name of the created Resource Group.      |
| `storage_account_id`                      | The ID of the created Storage Account.       |
| `storage_account_primary_file_endpoint`   | The primary file endpoint for the Storage Account. |

## Example

Here is an example of how to use this module in a Terraform configuration:

```hcl
module "resource_group_storage" {
  source  = "./modules/resource_group_storage"
  prefix  = "myapp"
  location = "East US"
}
```

## Resources

This module will create the following resources:

- Azure Resource Group
- Azure Storage Account

## Requirements

- Terraform 0.12 or later
- Azure Provider (`azurerm`)


