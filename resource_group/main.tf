variable "name" {}
variable "location" {}


resource "azurerm_resource_group" "main" {
  name     = "${var.name}"
  location = "${var.location}"
}

output "resource_group_name" {
  value = "${azurerm_resource_group.main.name}"
}

output "resource_group_id" {
  value = "${azurerm_resource_group.main.id}"
}
