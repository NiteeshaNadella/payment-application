
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "payment" {
  name     = "rg-payment-opa-demo"
  location = "canadacentral"

  tags = {
    environment = "dev"
    # project     = "payment-application"
    # owner       = "devops-team"
    costcenter  = "TEST1001"
  }
}
