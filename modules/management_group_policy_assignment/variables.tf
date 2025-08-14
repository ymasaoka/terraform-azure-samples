variable "name" {
  type        = string
  description = "The name of the policy assignment."
}

variable "policy_definition_id" {
  type        = string
  description = "The ID of the policy definition."
}

variable "management_group_id" {
  type        = string
  description = "The ID of the management group."
}
