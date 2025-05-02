# Log Analytics ログの診断設定
resource "azurerm_monitor_diagnostic_setting" "container_app_env" {
  name                       = "diag-container-app-env"
  target_resource_id         = azurerm_container_app_environment.this.id
  log_analytics_workspace_id = var.log-analytics-workspace-id

  # Log Analytics ログの診断設定
  enabled_log {
    category_group = "AllLogs"
  }

  metric {
    category = "AllMetrics"
  }
}
