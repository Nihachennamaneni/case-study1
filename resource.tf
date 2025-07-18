resource "azurerm_resource_group" "terra-casestudy" {
  name     = "terra-casestudy"
  location = "East US"
} 
resource "azurerm_storage_account" "saterra" {
    name                     = "chnkds2582"
    resource_group_name      = azurerm_resource_group.terra-casestudy.name
    location                 = azurerm_resource_group.terra-casestudy.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
resource "azurerm_storage_container" "example" {
  name                  = "cnblob"
  storage_account_name  = azurerm_storage_account.saterra.name
  container_access_type = "private"
}
