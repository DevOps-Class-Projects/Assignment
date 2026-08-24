variable "resource_groups" {}
variable "VirtualNetworks" {}
variable "vm" {}

module "resource_group_name" {
  source = "../Rg_group"
rg = var.resource_groups
}

module "Network" {
    source = "../Network"
    vnet = var.VirtualNetworks
}

module "VM" {
    source = "../VM"
    nic = var.vm
}