/*
resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 8
}


resource "azurerm_traffic_manager_profile" "traffic_manager" {
  name = random_id.server.hex
  resource_group_name = azurerm_resource_group.terraform1.name

  traffic_routing_method = "Weighted"

  dns_config {
    relative_name = random_id.server.hex
    ttl = 100
  }

  monitor_config {
    protocol = "HTTP"
    port = 80
    path = "/"
    interval_in_seconds = 30
    timeout_in_seconds = 9
    tolerated_number_of_failures = 3
  }

}

#resource "azurerm_traffic_manager_endpoint" "example" {
#name                = random_id.server.hex
#resource_group_name = azurerm_resource_group.terraform1.name
#profile_name        = azurerm_traffic_manager_profile.example.name
#target              = "terraform.io"
#type                = "externalEndpoints"
#weight              = 100
#}


*/
