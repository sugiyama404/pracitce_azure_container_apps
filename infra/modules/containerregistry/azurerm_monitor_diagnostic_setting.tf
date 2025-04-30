# Log Analytics ログの診断設定
resource "azurerm_monitor_diagnostic_setting" "container_app_env" {
  name                       = "diag-container-app-env"
  target_resource_id         = azurerm_container_app_environment.this.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.this.id

  log {
    category = "ContainerAppConsoleLogs"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }

  log {
    category = "ContainerAppSystemLogs"
    enabled  = true
    retention_policy {
      enabled = false
    }
  }
}
