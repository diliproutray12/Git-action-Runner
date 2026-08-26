resource "azurerm_subnet" "subn" {
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.rgname
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}