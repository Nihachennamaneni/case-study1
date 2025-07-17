resource "azurerm_resource_group" "terra-casestudy" {
  name     = "terra-casestudy"
  location = "East US"
} 
resource "azurerm_storage_account" "chnkds2582" {
    name                     = "chnkds2582"
    resource_group_name      = azurerm_resource_group.storeterra.name
    location                 = azurerm_resource_group.storeterra.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}