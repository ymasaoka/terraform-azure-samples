module "policy_deployments_region" {
  source = "../modules/policy_definition"

  policy_type         = var.policy_type
  name                = var.policy_name_deployments_region
  display_name        = var.policy_display_name_deployments_region
  mode                = var.policy_mode_deployments_region
  description         = var.policy_description_deployments_region
  policy_rule         = var.policy_rule_deployments_region
  parameters          = var.policy_parameters_deployments_region
  management_group_id = var.management_group_id_guardrail
}

output "policy_deployments_region_id" {
  value = module.policy_deployments_region.id
}

module "policy_deployments_permission_model_aoai" {
  source = "../modules/policy_definition"

  policy_type         = var.policy_type
  name                = var.policy_name_deployments_permission_model_aoai
  display_name        = var.policy_display_name_deployments_permission_model_aoai
  mode                = var.policy_mode_deployments_permission_model_aoai
  description         = var.policy_description_deployments_permission_model_aoai
  policy_rule         = var.policy_rule_deployments_permission_model_aoai
  parameters          = var.policy_parameters_deployments_permission_model_aoai
  management_group_id = var.management_group_id_guardrail
}

output "policy_deployments_permission_model_aoai_id" {
  value = module.policy_deployments_permission_model_aoai.id
}

module "management_group_policy_set_definition_guardrail" {
  source = "../modules/management_group_policy_set_definition"

  policy_type                 = var.policy_type
  name                        = var.policy_definition_name_guardrail
  display_name                = var.policy_definition_display_name_guardrail
  management_group_id         = var.management_group_id_guardrail
  description                 = var.policy_definition_description_guardrail
  policy_definition_reference = [
    { policy_definition_id    = module.policy_deployments_region.id },
    { policy_definition_id    = module.policy_deployments_permission_model_aoai.id }
  ]
}

output "management_group_policy_set_definition_guardrail_id" {
  value = module.management_group_policy_set_definition_guardrail.id
}

module "management_group_policy_assignment_guardrail" {
  source                = "../modules/management_group_policy_assignment"

  name                  = var.management_group_policy_assignment_name_guardrail
  management_group_id   = var.management_group_id_guardrail
  policy_definition_id  = module.management_group_policy_set_definition_guardrail.id
}
