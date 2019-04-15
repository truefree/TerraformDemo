resource "azurerm_public_ip" "myterraformpublicip" {
    name                         = "user22PublicIP"
    location                     = "koreacentral"
    resource_group_name          = "${azurerm_resource_group.myterraformgroup.name}"
    allocation_method            = "Dynamic"
    
    tags {
        environment = "user22 Terraform Demo"
    }
}