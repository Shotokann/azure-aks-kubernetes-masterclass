# Create Outputs

# 1. Resource Group Location
output "location" {
  value = azurerm_resource_group.aks_rg.location
}

# 2. Resource Group Id
output "resource_group_id" {
  value = azurerm_resource_group.aks_rg.id
}

# 3. Resource Group Name
output "resource_group_name" {
  value = azurerm_resource_group.aks_rg.name
}

#Azure AKS Versions Datasource
output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

# AKS cluster basic block outputs
output "client_certificate" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw

  sensitive = true
}

# Azure AD Admin Group Id's
output "azure_ad_admin_group_id" {
  value = azuread_group.aks_administrators.id
}

output "azure_ad_admin_group_object_id" {
  value = azuread_group.aks_administrators.object_id
}

# Azure AKS Outputs
output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_kubernetes_version" {
  value = azurerm_kubernetes_cluster.aks_cluster.kubernetes_version
}