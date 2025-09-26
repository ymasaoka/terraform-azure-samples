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

variable "mode" {
  type = string
  description = "The mode of the policy definition, e.g., 'Indexed', 'All', 'Microsoft.ContainerService.Data', 'Microsoft.CustomerLockbox.Data', 'Microsoft.DataCatalog.Data', 'Microsoft.KeyVault.Data', 'Microsoft.Kubernetes.Data', 'Microsoft.MachineLearningServices.Data', 'Microsoft.Network.Data' and 'Microsoft.Synapse.Data'."
}

variable "description" {
  type = string
  description = "The description of the policy definition."
  default = null
}

variable "management_group_id" {
  type = string
  description = "The id of the Management Group where this policy should be defined."
  default = null
}

variable "policy_rule" {
  type = string
  description = "The policy rule for the policy definition. This is a JSON string representing the rule that contains an if and a then block."
  default = null
}

variable "metadata" {
  type = string
  description = "The metadata for the policy definition. This is a JSON string representing additional metadata that should be stored with the policy definition"
  default = null
}

variable "parameters" {
  type = string
  description = "Parameters for the policy definition. This field is a JSON string that allows you to parameterize your policy definition. Reducing the number of parameters forces a new resource to be created."
  default = null
}
