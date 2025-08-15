# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
resource "azurerm_storage_account" "this" {
  # Required
  name                              = var.name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  account_tier                      = var.account_tier
  account_replication_type          = var.account_replication_type
  # Optional
  account_kind                      = var.account_kind
  # provisioned_billing_model_version = var.provisioned_billing_model_version
  # cross_tenant_replication_enabled  = var.cross_tenant_replication_enabled
  access_tier                       = var.access_tier
  # edge_zone                         = var.edge_zone
  # https_traffic_only_enabled        = var.https_traffic_only_enabled
  min_tls_version                   = var.min_tls_version
  allow_nested_items_to_be_public   = var.allow_nested_items_to_be_public
  # shared_access_key_enabled         = var.shared_access_key_enabled
  public_network_access_enabled     = var.public_network_access_enabled
  default_to_oauth_authentication   = var.default_to_oauth_authentication
  # is_hns_enabled                    = var.is_hns_enabled
  # nfsv3_enabled                     = var.nfsv3_enabled
  # large_file_share_enabled          = var.large_file_share_enabled
  # local_user_enabled                = var.local_user_enabled
  # queue_encryption_key_type         = var.queue_encryption_key_type
  # table_encryption_key_type         = var.table_encryption_key_type
  # infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  # allowed_copy_scope                = var.allowed_copy_scope
  # sftp_enabled                      = var.sftp_enabled
  # dns_endpoint_type                 = var.dns_endpoint_type
  # tags                              = var.tags

  # custom_domain {
  #   name                            = var.custom_domain_name
  #   use_subdomain                   = var.custom_domain_use_subdomain
  # }
  # customer_managed_key {
  #   user_assigned_identity_id       = var.customer_managed_key_user_assigned_identity_id
  # }
  # identity {
  #   type                            = var.identity_type
  # }
  # blob_properties {}
  # queue_properties {}
  # static_website {}
  # share_properties {}
  # network_rules {
  #   default_action                  = var.network_rules_default_action
  # }
  # azure_files_authentication {
  #   directory_type                  = var.azure_files_authentication_directory_type
  # }
  # routing {}
  # immutability_policy {
  #   allow_protected_append_writes   = var.immutability_policy_allow_protected_append_writes
  #   state                           = var.immutability_policy_state
  #   period_since_creation_in_days   = var.immutability_policy_period_since_creation_in_days
  # }
  # sas_policy {
  #   expiration_period               = var.sas_policy_expiration_period
  # }
}
