#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#*                 Root Module                         *#
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

# Terraform Block

terraform {
    required_providers  {
        azurerm =   {
            source = "hashicorp/azurerm"
            version = "3.52.0"
        }
    }
}

# Provider Block

provider "azurerm" {
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}

## Create Resource Group - EU-PROD01
resource "azurerm_resource_group" "RGRP-euprod01" {
  name     = "EU-PROD01"
  location = "North Europe"

  tags = {
    environment = "EU-PROD01"
  }
}
