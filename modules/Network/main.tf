variable "Vnet" {
  
}

resource "azurerm_virtual_network" "Network" {
for_each = var.Vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  
  subnet {
    name             = each.value.name
    address_prefixes = each.value.address_prefixes
  }
}