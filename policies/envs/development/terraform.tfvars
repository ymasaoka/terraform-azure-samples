policy_type = "Custom"
policy_name_deployments_region = "do-not-allow-deployments-outside-the-permitted-regions"
policy_display_name_deployments_region = "Do not allow deployments outside the permitted regions"
policy_mode_deployments_region = "All"
policy_description_deployments_region = "Restrict the use of unauthorized regions, ensuring that only administrator-approved regions are accessible."
policy_rule_deployments_region = <<POLICY_RULE
{
  "if": {
    "not": {
      "field": "location",
      "in": [
        "eastus",
        "eastus2",
        "unitedstates",
        "northcentralus",
        "southcentralus",
        "centralus",
        "westcentralus",
        "westus",
        "westus2",
        "westus3",
        "japaneast",
        "japan",
        "japanwest",
        "global"
      ]
    }
  },
  "then": {
    "effect": "[parameters('effect')]"
  }
}
POLICY_RULE
policy_parameters_deployments_region = <<PARAMETERS
{
  "effect": {
    "type": "string",
    "allowedValues": [
      "Audit",
      "Deny",
      "Disabled"
    ]
  }
}
PARAMETERS

policy_name_deployments_permission_model_aoai = "disallow-unapproved-model-deployments"
policy_display_name_deployments_permission_model_aoai = "Disallow unapproved model deployments"
policy_mode_deployments_permission_model_aoai = "All"
policy_description_deployments_permission_model_aoai = "Disallow deployments of models that are not approved by the administrator, ensuring compliance with organizational standards."
policy_rule_deployments_permission_model_aoai = <<POLICY_RULE
{
  "if": {
    "anyOf": [
      {
        "allOf": [
          {
            "equals": "Microsoft.CognitiveServices/accounts/deployments",
            "field": "type"
          },
          {
            "not": {
              "equals": "OpenAI",
              "field": "Microsoft.CognitiveServices/accounts/deployments/model.format"
            }
          }
        ]
      },
      {
        "anyOf": [
          {
            "equals": "Microsoft.MachineLearningServices/workspaces/onlineEndpoints",
            "field": "type"
          },
          {
            "equals": "Microsoft.MachineLearningServices/workspaces/serverlessEndpoints",
            "field": "type"
          }
        ]
      }
    ]
  },
  "then": {
    "effect": "[parameters('effect')]"
  }
}
POLICY_RULE
policy_parameters_deployments_permission_model_aoai = <<PARAMETERS
{
  "effect": {
    "type": "String",
    "allowedValues": [
      "Audit",
      "Deny",
      "Disabled"
    ],
    "defaultValue": "Deny"
  }
}
PARAMETERS

policy_definition_name_guardrail = "guardrail-common"
policy_definition_display_name_guardrail = "Guardrail"
policy_definition_description_guardrail = "A collection of policies applied as guardrails."

management_group_policy_assignment_name_guardrail = "guardrail-assignment-mg-landing-zones"
management_group_id_guardrail = "/providers/Microsoft.Management/managementGroups/landing-zones"
