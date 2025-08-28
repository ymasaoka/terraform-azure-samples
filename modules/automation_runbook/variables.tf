variable "name" {
  description = "The name of the Automation Runbook."
  type        = string
}

variable "location" {
  description = "The location of the Automation Runbook."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the Automation Runbook."
  type        = string
}

variable "automation_account_name" {
  description = "The name of the Automation Account containing the Automation Runbook."
  type        = string
}

variable "runbook_type" {
  description = "The type of the runbook - can be either Graph, GraphPowerShell, GraphPowerShellWorkflow, PowerShellWorkflow, PowerShell, PowerShell72, Python3, Python2 or Script."
  type        = string
}

variable "log_progress" {
  description = "Specifies whether to enable logging progress information for this runbook."
  type        = bool
  default     = false
}

variable "log_verbose" {
  description = "Specifies whether to enable logging verbose information for this runbook."
  type        = bool
  default     = false
}

variable "description" {
  description = "A description of the Automation Runbook."
  type        = string
  default     = null
}

variable "content" {
  description = "The content of the Automation Runbook."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the Automation Runbook."
  type        = map(string)
  default     = null
}

variable "log_activity_trace_level" {
  description = "Specifies the activity-level tracing options of the runbook, available only for Graphical runbooks. Possible values are 0 for None, 9 for Basic, and 15 for Detailed."
  type        = number
  default     = 0
}

# publish_content_link
variable "publish_content_link_uri" {
  description = "The URI of the publish content link."
  type        = string
  default     = null
}

variable "publish_content_link_version" {
  description = "The version of the publish content link."
  type        = string
  default     = null
}

variable "hash_algorithm" {
  description = "The algorithm used for the hash."
  type        = string
  default     = null
}

variable "hash_value" {
  description = "The value of the hash."
  type        = string
  default     = null
}

# job_schedule
variable "job_schedule_name" {
  description = "The name of the job schedule."
  type        = string
  default     = null
}

variable "job_schedule_parameters" {
  description = "The parameters for the job schedule."
  type        = map(string)
  default     = {}
}

variable "job_schedule_run_on" {
  description = "The run on setting for the job schedule."
  type        = string
  default     = null
}