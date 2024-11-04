terraform {
  required_version = ">= 1.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4"
    }
  }
}

provider "azurerm" {
  subscription_id = "00000000-0000-0000-0000-000000000000"
  features {}
}

module "azure_core" {
  source = "../.."

  resource_group = {
    name = "example-rg"
  }

  key_vault = {
    name = "example-kv"
  }

  location = "West Europe"
  tags     = { Environment = "Production" }
}