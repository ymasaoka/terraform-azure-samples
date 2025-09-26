# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/function_app_flex_consumption
resource "azurerm_function_app_flex_consumption" "this" {
  # Required
  location                                        = var.location
  name                                            = var.name
  resource_group_name                             = var.resource_group_name
  service_plan_id                                 = var.service_plan_id
  storage_container_type                          = var.storage_container_type
  storage_container_endpoint                      = var.storage_container_endpoint
  storage_authentication_type                     = var.storage_authentication_type
  runtime_name                                    = var.runtime_name
  runtime_version                                 = var.runtime_version
  site_config {
    application_insights_connection_string        = var.site_config_application_insights_connection_string
    application_insights_key                      = var.site_config_application_insights_key
    container_registry_use_managed_identity       = var.site_config_container_registry_use_managed_identity
    default_documents                             = var.site_config_default_documents
    http2_enabled                                 = var.site_config_http2_enabled
    load_balancing_mode                           = var.site_config_load_balancing_mode
    managed_pipeline_mode                         = var.site_config_managed_pipeline_mode
    minimum_tls_version                           = var.site_config_minimum_tls_version
    remote_debugging_enabled                      = var.site_config_remote_debugging_enabled
    remote_debugging_version                      = var.site_config_remote_debugging_version
    runtime_scale_monitoring_enabled              = var.site_config_runtime_scale_monitoring_enabled
    scm_minimum_tls_version                       = var.site_config_scm_minimum_tls_version
    scm_use_main_ip_restriction                   = var.site_config_scm_use_main_ip_restriction
    use_32_bit_worker                             = var.site_config_use_32_bit_worker
    websockets_enabled                            = var.site_config_websockets_enabled
    worker_count                                  = var.site_config_worker_count
    cors {
      allowed_origins                             = var.cors_allowed_origins
      support_credentials                         = var.cors_support_credentials
    }
  }
  # Optional
  app_settings                                    = var.app_settings
  # client_certificate_enabled                      = var.client_certificate_enabled
  client_certificate_mode                         = var.client_certificate_mode
  # client_certificate_exclusion_paths              = var.client_certificate_exclusion_paths
  # enabled                                         = var.enabled
  # public_network_access_enabled                   = var.public_network_access_enabled
  https_only                                      = var.https_only
  # storage_access_key                              = var.storage_access_key
  # storage_user_assigned_identity_id               = var.storage_user_assigned_identity_id
  maximum_instance_count                          = var.maximum_instance_count
  instance_memory_in_mb                           = var.instance_memory_in_mb
  tags                                            = var.tags
  # virtual_network_subnet_id                       = var.virtual_network_subnet_id
  webdeploy_publish_basic_authentication_enabled  = var.webdeploy_publish_basic_authentication_enabled
  # zip_deploy_file                                 = var.zip_deploy_file
  # auth_settings {
  #   enabled                                       = var.auth_settings_enabled
  # }
  # auth_settings_v2 {}
  # connection_string {
  #   name                                          = var.connection_string_name
  #   type                                          = var.connection_string_type
  #   value                                         = var.connection_string_value
  # }
  identity {
    type                                          = var.identity_type
    identity_ids                                  = var.identity_ids
  }
  sticky_settings {
    app_setting_names                             = var.app_setting_names
  }
  # always_ready {
  #   name                                          = var.always_ready_name
  #   instance_count                                = var.always_ready_instance_count
  # }
}
