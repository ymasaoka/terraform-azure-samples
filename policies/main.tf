locals {
  policy_definitions = {
    # Cognitive Services policies
    disallow_unapproved_model_deployments = {
      category     = "cognitive_services"
      name         = var.policy_name_deployments_permission_model_aoai
      display_name = var.policy_display_name_deployments_permission_model_aoai
      description  = var.policy_description_deployments_permission_model_aoai
    }
    # Region policies
    disallow_deployments_outsite_permitted_regions = {
      category     = "region"
      name         = var.policy_name_disallow_deployments_outsite_permitted_regions
      display_name = var.policy_display_name_disallow_deployments_outsite_permitted_regions
      description  = var.policy_description_disallow_deployments_outsite_permitted_regions
    }
  }
}

module "policy_definitions" {
  source   = "./modules/policy_definition"
  for_each = local.policy_definitions

  policy_type         = var.policy_type_custom
  name                = each.value.name
  display_name        = each.value.display_name
  mode                = var.policy_mode_all
  description         = each.value.description
  metadata            = templatefile("./policies/${each.value.category}/${each.key}/policy_metadata.json", {})
  parameters          = templatefile("./policies/${each.value.category}/${each.key}/policy_parameters.json", {})
  policy_rule         = templatefile("./policies/${each.value.category}/${each.key}/policy_rules.json", {})
  management_group_id = var.management_group_id_guardrail
}

output "policy_definition_ids" {
  value = {
    for k, m in module.policy_definitions :
    k => try(m.policy_definition_id, m.id, null)
  }
}

module "management_group_policy_set_definition_guardrail" {
  source = "./modules/management_group_policy_set_definition"

  policy_type                 = var.policy_type_custom
  name                        = var.initiative_name_guardrail
  display_name                = var.initiative_display_name_guardrail
  management_group_id         = var.management_group_id_guardrail
  description                 = var.initiative_description_guardrail
  metadata                    = templatefile("./initiatives/guardrail/initiative_metadata.json", {})
  policy_definition_reference = [
    for k, m in values(module.policy_definitions) : {
      policy_definition_id = try(m.policy_definition_id, m.id)
      reference_id         = k
    }
  ]
}

output "management_group_policy_set_definition_guardrail_id" {
  value = module.management_group_policy_set_definition_guardrail.id
}

module "management_group_policy_assignment_guardrail" {
  source                = "./modules/management_group_policy_assignment"

  name                  = var.management_group_policy_assignment_name_guardrail
  management_group_id   = var.management_group_id_guardrail
  policy_definition_id  = module.management_group_policy_set_definition_guardrail.id
}
