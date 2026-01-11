resource "azurerm_site_recovery_replication_recovery_plan" "site_recovery_replication_recovery_plans" {
  for_each = var.site_recovery_replication_recovery_plans

  name                      = each.value.name
  recovery_vault_id         = each.value.recovery_vault_id
  source_recovery_fabric_id = each.value.source_recovery_fabric_id
  target_recovery_fabric_id = each.value.target_recovery_fabric_id

  boot_recovery_group {
    dynamic "post_action" {
      for_each = each.value.boot_recovery_group.post_action != null ? [each.value.boot_recovery_group.post_action] : []
      content {
        fabric_location           = post_action.value.fabric_location
        fail_over_directions      = post_action.value.fail_over_directions
        fail_over_types           = post_action.value.fail_over_types
        manual_action_instruction = post_action.value.manual_action_instruction
        name                      = post_action.value.name
        runbook_id                = post_action.value.runbook_id
        script_path               = post_action.value.script_path
        type                      = post_action.value.type
      }
    }
    dynamic "pre_action" {
      for_each = each.value.boot_recovery_group.pre_action != null ? [each.value.boot_recovery_group.pre_action] : []
      content {
        fabric_location           = pre_action.value.fabric_location
        fail_over_directions      = pre_action.value.fail_over_directions
        fail_over_types           = pre_action.value.fail_over_types
        manual_action_instruction = pre_action.value.manual_action_instruction
        name                      = pre_action.value.name
        runbook_id                = pre_action.value.runbook_id
        script_path               = pre_action.value.script_path
        type                      = pre_action.value.type
      }
    }
    replicated_protected_items = each.value.boot_recovery_group.replicated_protected_items
  }

  failover_recovery_group {
    dynamic "post_action" {
      for_each = each.value.failover_recovery_group.post_action != null ? [each.value.failover_recovery_group.post_action] : []
      content {
        fabric_location           = post_action.value.fabric_location
        fail_over_directions      = post_action.value.fail_over_directions
        fail_over_types           = post_action.value.fail_over_types
        manual_action_instruction = post_action.value.manual_action_instruction
        name                      = post_action.value.name
        runbook_id                = post_action.value.runbook_id
        script_path               = post_action.value.script_path
        type                      = post_action.value.type
      }
    }
    dynamic "pre_action" {
      for_each = each.value.failover_recovery_group.pre_action != null ? [each.value.failover_recovery_group.pre_action] : []
      content {
        fabric_location           = pre_action.value.fabric_location
        fail_over_directions      = pre_action.value.fail_over_directions
        fail_over_types           = pre_action.value.fail_over_types
        manual_action_instruction = pre_action.value.manual_action_instruction
        name                      = pre_action.value.name
        runbook_id                = pre_action.value.runbook_id
        script_path               = pre_action.value.script_path
        type                      = pre_action.value.type
      }
    }
  }

  shutdown_recovery_group {
    dynamic "post_action" {
      for_each = each.value.shutdown_recovery_group.post_action != null ? [each.value.shutdown_recovery_group.post_action] : []
      content {
        fabric_location           = post_action.value.fabric_location
        fail_over_directions      = post_action.value.fail_over_directions
        fail_over_types           = post_action.value.fail_over_types
        manual_action_instruction = post_action.value.manual_action_instruction
        name                      = post_action.value.name
        runbook_id                = post_action.value.runbook_id
        script_path               = post_action.value.script_path
        type                      = post_action.value.type
      }
    }
    dynamic "pre_action" {
      for_each = each.value.shutdown_recovery_group.pre_action != null ? [each.value.shutdown_recovery_group.pre_action] : []
      content {
        fabric_location           = pre_action.value.fabric_location
        fail_over_directions      = pre_action.value.fail_over_directions
        fail_over_types           = pre_action.value.fail_over_types
        manual_action_instruction = pre_action.value.manual_action_instruction
        name                      = pre_action.value.name
        runbook_id                = pre_action.value.runbook_id
        script_path               = pre_action.value.script_path
        type                      = pre_action.value.type
      }
    }
  }

  dynamic "azure_to_azure_settings" {
    for_each = each.value.azure_to_azure_settings != null ? [each.value.azure_to_azure_settings] : []
    content {
      primary_edge_zone  = azure_to_azure_settings.value.primary_edge_zone
      primary_zone       = azure_to_azure_settings.value.primary_zone
      recovery_edge_zone = azure_to_azure_settings.value.recovery_edge_zone
      recovery_zone      = azure_to_azure_settings.value.recovery_zone
    }
  }
}

