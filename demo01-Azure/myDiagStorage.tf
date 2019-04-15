resource "azurerm_storage_account" "mystorageaccount" {
    name                = "diag${random_id.randomId.hex}"
    resource_group_name = "${azurerm_resource_group.myterraformgroup.name}"
    location            = "koreacentral"
    account_replication_type = "LRS"
    account_tier = "Standard"
    
    tags {
        environment = "user22 Terraform Demo"
    }
}
