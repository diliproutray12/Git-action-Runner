resourcegroup = {
  rg1 = {
    name     = "niki-rg"
    location = "eastus"
  }
}
virtualnetwork = {
  vnet = {
    name          = "susu-vnet"
    location      = "eastus"
    rgname        = "niki-rg"
    address_space = ["10.0.0.0/16"]
  }
}
subnets = {
  sub1 = {
    name                 = "frontend-snet"
    rgname               = "niki-rg"
    virtual_network_name = "susu-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}