# Container App
resource "azurerm_container_app" "web" {
  name                         = "ca-web"
  container_app_environment_id = azurerm_container_app_environment.this.id
  resource_group_name          = var.resource_group.name
  revision_mode                = "Single"

  template {
    container {
      name   = "web"
      image  = "${var.registry_login_server}/${var.image_name}:latest"
      cpu    = "0.5"
      memory = "1Gi"
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
    server               = var.registry_login_server
    username             = var.registry_admin_username
    password_secret_name = "registry-password"
  }

  secret {
    name  = "registry-password"
    value = var.registry_admin_password
  }
}
