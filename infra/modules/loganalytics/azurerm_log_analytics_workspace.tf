resource "azurerm_log_analytics_workspace" "this" {
  name                = "law-container-apps"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  sku                 = "PerGB2018"
  retention_in_days   = 7
}
