variable "name" {
  description = "The name of the Automation Variable String."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the Automation Variable String."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the Automation Account containing the Automation Variable String."
  type        = string
}

variable "description" {
  description = "A description of the Automation Variable String."
  type        = string
  default     = null
}

variable "encrypted" {
  description = "Specifies whether the Automation Variable String is encrypted."
  type        = bool
  default     = false
}

variable "value" {
  description = "The value of the Automation Variable String."
  type        = string
  default     = null
}
