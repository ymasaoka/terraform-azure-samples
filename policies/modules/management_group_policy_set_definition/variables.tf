variable "policy_type" {
  type = string
  description = "The type of policy definition, e.g., 'Custom', 'BuiltIn', 'NotSpecified' and 'Static'."
}

variable "name" {
  type = string
  description = "The name of the policy definition."
}

variable "display_name" {
  type = string
  description = "The display name of the policy definition."
}

variable "management_group_id" {
  type = string
  description = "The ID of the management group where the policy set definition will be created."
}

variable "policy_definition_reference" {
  type = list(object({
    # Required
    policy_definition_id = string
    # Optional
    parameter_values = optional(string)
    policy_group_names = optional(list(string))
    reference_id = optional(string)
    version = optional(string)
  }))
  description = "The reference ID of the policy definition."
}

variable "description" {
  type = string
  description = "The description of the policy definition."
  default = null
}

variable "metadata" {
  type = string
  description = "The metadata for the Policy Set Definition in JSON format."
  default = null
}

variable "parameters" {
  type = string
  description = "The parameters for the Policy Set Definition in JSON format."
  default = null
}

variable "policy_definition_group" {
  type = object({
    # Required
    name = string
    # Optional
    # additional_metadata_resource_id = string
    # category = string
    # policy_group_names = list(string)
    # reference_id = string
    # version = string
  })
  description = "The policy definition group for the Policy Set Definition."
  default = null
}
