# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan
resource "azurerm_service_plan" "this" {
  # Required
  name                            = var.name
  location                        = var.location
  os_type                         = var.os_type
  resource_group_name             = var.resource_group_name
  sku_name                        = var.sku_name
  # Optional
  # app_service_environment_id      = var.app_service_environment_id
  # premium_plan_auto_scale_enabled = var.premium_plan_auto_scale_enabled
  # maximum_elastic_worker_count    = var.maximum_elastic_worker_count
  # worker_count                    = var.worker_count
  # per_site_scaling_enabled        = var.per_site_scaling_enabled
  # zone_balancing_enabled          = var.zone_balancing_enabled
  # tags                            = var.tags
}
