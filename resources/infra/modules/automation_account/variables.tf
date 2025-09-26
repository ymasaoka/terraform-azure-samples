variable "name" {
  description = "The name of the automation account"
  type        = string
}

variable "location" {
  description = "The location of the automation account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "sku_name" {
  description = "The SKU of the account. Possible values are Basic and Free."
  type        = string
}

variable "local_authentication_enabled" {
  description = "Whether local authentication is enabled"
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Whether public network access is enabled"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the function app."
  type        = map(string)
  default     = {}
}

# identity
variable "identity_type" {
  description = "The type of identity to use for the function app."
  type        = string
  default     = "SystemAssigned"
}

variable "identity_ids" {
  description = "A list of user-assigned identity IDs to assign to the function app."
  type        = list(string)
  default     = []
}

# encryption
variable "encryption_key_vault_key_id" {
  description = "The ID of the Key Vault key to use for encryption."
  type        = string
  default     = null
}

variable "encryption_user_assigned_identity_id" {
  description = "The ID of the user-assigned identity to use for encryption."
  type        = string
  default     = null
}
