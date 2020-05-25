//--------------------------------------------------------------------
// Variables
variable "computeinfra_clientId" {}
variable "computeinfra_clientSecret" {}
variable "computeinfra_hradwareType" {}
variable "computeinfra_network" {}
variable "region" {}
variable "computeinfra_rgName" {}
variable "computeinfra_subnet" {}
variable "computeinfra_subscriptionId" {}
variable "computeinfra_tenantId" {}
variable "computeinfra_vmname" {}

//-----------------------------------------------------------------

provider "azurerm" {
  subscription_id = "${var.computeinfra_subscriptionId}"
  client_id       = "${var.computeinfra_clientId}"
  client_secret   = "${var.computeinfra_clientSecret}"
  tenant_id       = "${var.computeinfra_tenantId}"
}

//--------------------------------------------------------------------
// Modules
module "computeinfra" {
  source  = "app.terraform.io/pod4/computeinfra/azure"
  version = "1.0.2"

  clientId = "${var.computeinfra_clientId}"
  clientSecret = "${var.computeinfra_clientSecret}"
  hradwareType = "${var.computeinfra_hradwareType}"
  network = "${var.computeinfra_network}"
  region = "${var.region}"
  rgName = "${var.computeinfra_rgName}"
  subnet = "${var.computeinfra_subnet}"
  subscriptionId = "${var.computeinfra_subscriptionId}"
  tenantId = "${var.computeinfra_tenantId}"
  vmname = "${var.computeinfra_vmname}"
}