# We will define 
    # 3. Terraform Remote State Storage with Azure Storage Account (last step of this section)
# 1. Terraform Settings Block
terraform {
    # 1.1. Required Version Terraform
    required_version = ">=  1.0.11"
    # 1.2. Required Terraform Providers
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~> 2.88.1"
        }
        azuread = {
            source = "hashicorp/azuread"
            version = "~> 2.12.0"
        }
        random = {
            source = "hashicorp/random"
            version = "~> 3.1.0"
        }
    }
    # 1.3. Terraform Remote State Storage with Azure Storage Account
    backend "azurerm" {
      resource_group_name = "terraform-storage-rg"
      storage_account_name = "terraformstateshotokann"
      container_name = "tfstatefiles"
      key = "dev.terraform.tfstate"
    }
}

# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  features {    
  }
}

# 3. Terraform Resource Block: Define a Random Pet Resource
resource "random_pet" "aksrandom" {  
}