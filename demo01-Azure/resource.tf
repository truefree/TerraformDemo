resource "azurerm_resource_group" "myterraformgroup" {
    name     = "user22ResourceGroup"
    location = "koreacentral"
    tags {
        environment = "user22 Terraform Demo"
    }
}