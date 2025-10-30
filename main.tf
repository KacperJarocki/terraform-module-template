resource "azurerm_resource_group" "example" {
  name     = var.example
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = var.example
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
