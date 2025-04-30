# Container App
resource "azurerm_container_app" "web" {
  name                         = "ca-web"
  container_app_environment_id = azurerm_container_app_environment.this.id
  resource_group_name          = azurerm_resource_group.this.name
  revision_mode                = "Single"

  template {
    container {
      name   = "web"
      image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      cpu    = "0.5"
      memory = "1Gi"
    }

    # スケール設定
    min_replicas = 1
    max_replicas = 10

    # オートスケール用のルール
    scale_rule {
      name = "http-rule"
      http {
        metadata = {
          concurrentRequests = "10"
        }
      }
    }
  }

  ingress {
    external_enabled = true
    target_port      = 80
    traffic_weight {
      percentage      = 100
      latest_revision = true
    }
  }

  # Registry認証
  registry {
    server               = azurerm_container_registry.this.login_server
    username             = azurerm_container_registry.this.admin_username
    password_secret_name = "registry-password"
  }

  secret {
    name  = "registry-password"
    value = azurerm_container_registry.this.admin_password
  }
}
