variable "site_recovery_replication_recovery_plans" {
  description = <<EOT
Map of site_recovery_replication_recovery_plans, attributes below
Required:
    - name
    - recovery_vault_id
    - source_recovery_fabric_id
    - target_recovery_fabric_id
    - boot_recovery_group (block):
        - post_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
        - pre_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
        - replicated_protected_items (optional)
    - failover_recovery_group (block):
        - post_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
        - pre_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
    - shutdown_recovery_group (block):
        - post_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
        - pre_action (optional, block):
            - fabric_location (optional)
            - fail_over_directions (required)
            - fail_over_types (required)
            - manual_action_instruction (optional)
            - name (required)
            - runbook_id (optional)
            - script_path (optional)
            - type (required)
Optional:
    - azure_to_azure_settings (block):
        - primary_edge_zone (optional)
        - primary_zone (optional)
        - recovery_edge_zone (optional)
        - recovery_zone (optional)
EOT

  type = map(object({
    name                      = string
    recovery_vault_id         = string
    source_recovery_fabric_id = string
    target_recovery_fabric_id = string
    boot_recovery_group = list(object({
      post_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
      pre_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
      replicated_protected_items = optional(list(string))
    }))
    failover_recovery_group = object({
      post_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
      pre_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
    })
    shutdown_recovery_group = object({
      post_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
      pre_action = optional(list(object({
        fabric_location           = optional(string)
        fail_over_directions      = set(string)
        fail_over_types           = set(string)
        manual_action_instruction = optional(string)
        name                      = string
        runbook_id                = optional(string)
        script_path               = optional(string)
        type                      = string
      })))
    })
    azure_to_azure_settings = optional(object({
      primary_edge_zone  = optional(string)
      primary_zone       = optional(string)
      recovery_edge_zone = optional(string)
      recovery_zone      = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.site_recovery_replication_recovery_plans : (
        length(v.boot_recovery_group) >= 1
      )
    ])
    error_message = "Each boot_recovery_group list must contain at least 1 items"
  }
}

