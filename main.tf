resource "azurerm_resource_group" "example" {
  name     = var.name
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = var.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = ["10.0.0.0/16"]
}
