# Azure Container Registry
resource "azurerm_container_registry" "this" {
  name                = "acrcontainerapps${random_string.suffix.result}"
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  sku                 = "Standard"
  admin_enabled       = true
}

# サフィックス用のランダム文字列
resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}
