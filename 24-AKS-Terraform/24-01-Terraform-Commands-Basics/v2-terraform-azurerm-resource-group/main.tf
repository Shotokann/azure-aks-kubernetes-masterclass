# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.88.1"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "aks-rg2" {
  name     = "aks-rg2-tf"
  location = "East US"
  
  ## Add Tags
  #tags = {
  #  "environment" = "k8sdev"
  #  "demotag" = "refreshtest"
  #}
}