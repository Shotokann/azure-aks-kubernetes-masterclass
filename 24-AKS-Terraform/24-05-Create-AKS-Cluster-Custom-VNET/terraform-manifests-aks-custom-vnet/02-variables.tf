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
  default = "dev2"
  description = "This defines the environment."
  type = string
}

# V2 Changes - AKS input variables
# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  default = "C:/Users/Shotokann/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rdP@ssw0rd"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}

# Linux Admin Username
variable "linux_admin_username" {
  type = string
  default = "ubuntu"
  description = "This variable defines the Linux admin username"
}