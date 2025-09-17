terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "simple-static-app-rg"
  location = "East US"
}

resource "azurerm_static_site" "example" {
  name                = "simple-static-app-${substr(md5(azurerm_resource_group.rg.id), 0, 8)}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_tier            = "Free"
  sku_size            = "Free"
}

output "static_web_app_url" {
  value = azurerm_static_site.example.default_host_name
}
