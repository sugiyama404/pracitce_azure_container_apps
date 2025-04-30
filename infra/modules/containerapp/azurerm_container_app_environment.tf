# Container Apps 環境
resource "azurerm_container_app_environment" "this" {
  name                       = "cae-demo"
  location                   = var.resource_group.location
  resource_group_name        = var.resource_group.name
  log_analytics_workspace_id = var.log-analytics-workspace-id
}
