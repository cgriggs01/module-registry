provider "azurerm" { }

module "module-test-jenkins" {
  source  = "Azure/module-test-jenkins/azurerm"
  version = "0.1.1"

  admin_username = "cgriggs01"
  location       = "westus"
  public_domain_name = "mymoduletestingstuff"
  resource_group_name = "module-testing"
  ssh_public_key_data = "${file("~/.ssh/id_rsa.pub")}"
  ssh_private_key_data = "${file("~/.ssh/id_rsa")}"


  # insert the 6 required variables here
}
