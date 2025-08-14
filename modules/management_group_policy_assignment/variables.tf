variable "name" {
  type        = string
  description = "The name of the policy assignment."
  validation {
    condition     = length(var.name) <= 24
    error_message = "The policy assignment name must not exceed 24 characters."
  }
}

variable "policy_definition_id" {
  type        = string
  description = "The ID of the policy definition."
}

variable "management_group_id" {
  type        = string
  description = "The ID of the management group."
}
