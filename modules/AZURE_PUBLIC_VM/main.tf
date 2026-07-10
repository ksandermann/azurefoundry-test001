resource "azurerm_virtual_network" "VNET" {
  name                = "${var.NAME_PREFIX}-VNET"
  address_space       = var.ADDRESS_SPACE
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  tags                = var.TAGS
}

resource "azurerm_subnet" "SUBNET" {
  name                 = "${var.NAME_PREFIX}-SUBNET"
  resource_group_name  = var.RESOURCE_GROUP_NAME
  virtual_network_name = azurerm_virtual_network.VNET.name
  address_prefixes     = var.SUBNET_PREFIXES
}

resource "azurerm_network_security_group" "NSG" {
  name                = "${var.NAME_PREFIX}-NSG"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  tags                = var.TAGS

  security_rule {
    name                       = "ALLOW-SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "ALLOW-HTTP"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_public_ip" "PIP" {
  name                = "${var.NAME_PREFIX}-PIP"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.TAGS
}

resource "azurerm_network_interface" "NIC" {
  name                = "${var.NAME_PREFIX}-NIC"
  location            = var.LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME
  tags                = var.TAGS

  ip_configuration {
    name                          = "PRIMARY"
    subnet_id                     = azurerm_subnet.SUBNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIP.id
  }
}

resource "azurerm_network_interface_security_group_association" "NIC_NSG" {
  network_interface_id      = azurerm_network_interface.NIC.id
  network_security_group_id = azurerm_network_security_group.NSG.id
}

resource "azurerm_linux_virtual_machine" "VM" {
  name                            = "${var.NAME_PREFIX}-VM"
  resource_group_name             = var.RESOURCE_GROUP_NAME
  location                        = var.LOCATION
  size                            = var.VM_SIZE
  admin_username                  = var.ADMIN_USERNAME
  disable_password_authentication = true
  network_interface_ids           = [azurerm_network_interface.NIC.id]
  tags                            = var.TAGS

  admin_ssh_key {
    username   = var.ADMIN_USERNAME
    public_key = var.SSH_PUBLIC_KEY
  }

  os_disk {
    name                 = "${var.NAME_PREFIX}-OSDISK"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }

  custom_data = base64encode(<<-EOT
    #cloud-config
    package_update: true
    packages:
      - nginx
    write_files:
      - path: /var/www/html/index.html
        content: |
          HELLO WORLD FROM TERRAFORM ON AZURE
    runcmd:
      - systemctl enable nginx
      - systemctl restart nginx
  EOT
  )
}
