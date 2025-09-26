variable "management_group_id_guardrail" {
  type        = string
}

variable "policy_type_custom" {
  type        = string
  description = "Policy type for custom policies"
  default     = "Custom"
}

variable "policy_mode_all" {
  type        = string
  description = "Policy mode for all resource types"
  default     = "All"
}

variable "policy_name_deployments_permission_model_aoai" {
  type        = string
  description = "Name of the policy to disallow unapproved model deployments"
  default     = "disallow-unapproved-model-deployments"
}

variable "policy_display_name_deployments_permission_model_aoai" {
  type        = string
  description = "Display name of the policy to disallow unapproved model deployments"
  default     = "Disallow unapproved model deployments"
}

variable "policy_description_deployments_permission_model_aoai" {
  type        = string
  description = "Description of the policy to disallow unapproved model deployments"
  default     = "Disallow deployments of models that are not approved by the administrator, ensuring compliance with organizational standards."
}

variable "policy_name_disallow_deployments_outsite_permitted_regions" {
  type        = string
  description = "Name of the policy to disallow deployments outside permitted regions"
  default     = "disallow-deployments-outside-the-permitted-regions"
}

variable "policy_display_name_disallow_deployments_outsite_permitted_regions" {
  type        = string
  description = "Display name of the policy to disallow deployments outside permitted regions"
  default     = "Do not allow deployments outside the permitted regions"
}

variable "policy_description_disallow_deployments_outsite_permitted_regions" {
  type        = string
  description = "Description of the policy to disallow deployments outside permitted regions"
  default     = "Restrict the use of unauthorized regions, ensuring that only administrator-approved regions are accessible."
}

variable "initiative_name_guardrail" {
  type        = string
  description = "Name of the policy initiative for guardrail"
  default     = "guardrail-common"
}

variable "initiative_display_name_guardrail" {
  type        = string
  description = "Display name of the policy initiative for guardrail"
  default     = "Guardrail - Common"
}

variable "initiative_description_guardrail" {
  type        = string
  description = "Description of the policy initiative for guardrail"
  default     = "A collection of policies applied as guardrails."
}

variable "management_group_policy_assignment_name_guardrail" {
  type        = string
  description = "Name of the management group policy assignment for guardrail"
  default     = "guardrail-landing-zones"
}
