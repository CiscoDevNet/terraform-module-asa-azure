################################################################################################################################
# Output
################################################################################################################################
data "azurerm_public_ip" "asav-mgmt-interface" {
  name                = azurerm_public_ip.asav-mgmt-interface.name
  resource_group_name = azurerm_virtual_machine.asav-instance.resource_group_name
}
output "public_ip_address" {
  value = data.azurerm_public_ip.asav-mgmt-interface.ip_address
}
