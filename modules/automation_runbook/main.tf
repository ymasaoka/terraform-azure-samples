resource "azurerm_automation_runbook" "this" {
  # Required
  name                      = var.name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  automation_account_name   = var.automation_account_name
  runbook_type              = var.runbook_type
  log_progress              = var.log_progress
  log_verbose               = var.log_verbose
  # Optional
  description               = var.description
  content                   = var.content
  # tags                      = var.tags
  log_activity_trace_level  = var.log_activity_trace_level

  # publish_content_link {
  #   uri     = var.publish_content_link_uri
  #   version = var.publish_content_link_version
  #   hash {
  #     algorithm = var.hash_algorithm
  #     value     = var.hash_value
  #   }
  # }

  # draft {}

  # job_schedule {
  #   schedule_name = var.job_schedule_name
  #   parameters    = var.job_schedule_parameters
  #   run_on        = var.job_schedule_run_on
  # }
}
