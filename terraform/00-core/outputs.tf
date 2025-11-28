output "jumpbox_public_ip" {
  value = azurerm_public_ip.jump_pip.ip_address
}

output "vault_public_ips" {
  value = azurerm_public_ip.vault_pip[*].ip_address
}

output "vault_private_ips" {
  value = azurerm_network_interface.vault_nic[*].ip_configuration[0].private_ip_address
}
