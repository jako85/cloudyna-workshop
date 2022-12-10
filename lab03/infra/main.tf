locals {
  address_space = "10.0.0.0/8"
}

module "network" {
  source = "./modules/network"

  name_prefix = var.name_prefix
  address_space = local.address_space
  subnets =  ["10.0.1.0/24"]
}

#kolejne cos
module "vm" {
  source = "./modules/vm"
  name_prefix = var.name_prefix
  #subnet_id = #to z outputu network module trzeba wziac
  subnet_id = module.network.subnet_id
}