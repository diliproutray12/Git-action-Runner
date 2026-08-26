resource "azurerm_virtual_network" "name" {
  for_each            = var.virtualnetwork
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname
  address_space       = each.value.address_space
}
