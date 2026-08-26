module "rgs" {
  source        = "../../Moduls/azurerm_resource_group"
  resourcegroup = var.resourcegroup
}
module "vnetwork" {
  depends_on     = [module.rgs]
  source         = "../../Moduls/azurerm_virtual_network"
  virtualnetwork = var.virtualnetwork
}
module "subnett" {
  depends_on = [module.vnetwork]
  source     = "../../Moduls/azurerm_subnet"
  subnets    = var.subnets
}
