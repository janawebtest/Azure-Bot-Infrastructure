terraform {
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 3.0" }
  }
  backend "azurerm" {
    resource_group_name  = "ccdemo"
    storage_account_name = "terraformtfstate202622"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" { features {} }

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

# (Add VNET, Subnet, and Public IP here - simplified for brevity)

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = var.vm_size
  admin_username      = "azureuser"
  network_interface_ids = [azurerm_network_interface.nic.id]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk { caching = "ReadWrite", storage_account_type = "Standard_LRS" }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22_04-lts"
    version   = "latest"
  }
}