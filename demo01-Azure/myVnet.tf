resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "user22Vnet"
    address_space       = ["22.0.0.0/16"]
    location            = "koreacentral"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"

    tags {
        environment = "user22 Terraform Demo"
    }
}