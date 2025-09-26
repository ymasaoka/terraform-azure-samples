variable "scope" {
  description = "The scope at which the role assignment applies"
  type        = string
}

variable "principal_id" {
  description = "The ID of the principal to assign the role to"
  type        = string
}

variable "role_definition_name" {
  description = "The name of the role definition to assign"
  type        = string
}

variable "principal_type" {
  description = "The type of the principal (User, Group, ServicePrincipal)"
  type        = string
}
