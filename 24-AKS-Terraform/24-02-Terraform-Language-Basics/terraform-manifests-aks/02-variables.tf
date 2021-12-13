# https://www.terraform.io/docs/configuration/variables.html
# Input Variables
# Output Values
# Local Values (Optional)

# Define Input Variables
# 1. Azure Location
variable "location" {
  default = "East US"
  description = "This defines where all the resources will be created."
  type = string
}

# 2. Azure Resource Group Name 
variable "resource_group_name" {
  default = "terraform-aks"
  description = "This defines the name of the Resource Group."
  type = string
}

# 3. Azure AKS Environment Name (Dev, QA, Prod)
variable "environment" {
  default = "dev"
  description = "This defines the environment."
  type = string
}
