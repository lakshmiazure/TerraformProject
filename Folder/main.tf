#provider "azurerm"{
    #version= "~>2.0"
    #subscription_id= "d87f7297-c65a-4c12-9f32-466c4b10110d"
    #tenant_id= "2f9733f1-8f9e-4388-96a3-54fa03040086"
    #client_id= "33d8ab0d-f314-44c1-b591-a702dc7d9f11"
    #features{}

#}
#RG Creation
resource "azurerm_resource_group" "R1"{
    name=var.rgname
    location=var.location
}
resource "azurerm_virtual_network" "VN1" {
    name=var.vnetname
    address_space =var.address_space1
    location=azurerm_resource_group.R1.location
    resource_group_name = azurerm_resource_group.R1.name
}

