resource "azurerm_virtual_machine" "myterraformvm" {
    name                  = "user22VM"
    location              = "koreacentral"
    resource_group_name   = "${azurerm_resource_group.myterraformgroup.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnic.id}"]
    vm_size               = "Standard_DS1_v2"
    storage_os_disk {
        name              = "user22OsDisk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }
        
    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }

    os_profile {
        computer_name  = "user22vm"
        admin_username = "azureuser"
        admin_password = "!Q2w3e4r5t^Y"
    }
        os_profile_linux_config {
            disable_password_authentication = true
            ssh_keys {
                path     = "/home/azureuser/.ssh/authorized_keys"
                key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCw76iyp3GxcnaIC66aHAQRH287QdXaPw1z1MIY9KbhtXbZjYZJU73IVBjbGHn4pk9lCgcKQnH42fGueLJpC6M9mpq6z2xL3Brh4CVXgfAvJbjAoOREtk7Ne/7b5cQ7ngoNOYqACgKMzLVQo4A2Hj77pB/aEX8d8tQImshp0Bub3Y216Un5fYNwpsuWAHiQ+S/Jn7qOGD2i/BjdknH2xA6v8M5quahKr8UB2eF2Yf7q+qbV7hWV2NYn4TI5Hj9iQRhnmJoTZwqjMYKlNueY6xEVTtkrQ7WQ0rJX401GiTYBvpGLniIdBBsMN6ouqweJVXWpYZnl2SPSnc4fJT7R5ear user22@cc-351ed1dd-6647bd664d-kh2h8"
            }
        }
        
        boot_diagnostics {
            enabled     = "true"
            storage_uri = "${azurerm_storage_account.mystorageaccount.primary_blob_endpoint}"
        }
        
        tags {
            environment = "user22 Terraform Demo"
        }
}