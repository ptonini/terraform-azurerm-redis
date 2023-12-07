resource "azurerm_redis_cache" "this" {
  name                = var.name
  location            = var.rg.location
  resource_group_name = var.rg.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version
  patch_schedule {
    day_of_week    = var.patch_schedule.day_of_week
    start_hour_utc = var.patch_schedule.start_hour_utc
  }
}