output "ci_fqdn" {
  value = azurerm_container_group.ci.fqdn
  #value       = values(azurerm_container_group.ci).*.fqdn
  description = "FQDN of your application."
}
