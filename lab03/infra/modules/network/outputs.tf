# output "subnet_id" {
#   value = azurerm_subnet. #fix the path
# }

output "subnet_id" {
  value = azurerm_subnet.subnet[0].id
}