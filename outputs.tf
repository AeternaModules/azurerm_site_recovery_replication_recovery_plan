output "site_recovery_replication_recovery_plans_id" {
  description = "Map of id values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.id if v.id != null && length(v.id) > 0 }
}
output "site_recovery_replication_recovery_plans_azure_to_azure_settings" {
  description = "Map of azure_to_azure_settings values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.azure_to_azure_settings if v.azure_to_azure_settings != null && length(v.azure_to_azure_settings) > 0 }
}
output "site_recovery_replication_recovery_plans_boot_recovery_group" {
  description = "Map of boot_recovery_group values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.boot_recovery_group if v.boot_recovery_group != null && length(v.boot_recovery_group) > 0 }
}
output "site_recovery_replication_recovery_plans_failover_recovery_group" {
  description = "Map of failover_recovery_group values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.failover_recovery_group if v.failover_recovery_group != null && length(v.failover_recovery_group) > 0 }
}
output "site_recovery_replication_recovery_plans_name" {
  description = "Map of name values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.name if v.name != null && length(v.name) > 0 }
}
output "site_recovery_replication_recovery_plans_recovery_vault_id" {
  description = "Map of recovery_vault_id values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.recovery_vault_id if v.recovery_vault_id != null && length(v.recovery_vault_id) > 0 }
}
output "site_recovery_replication_recovery_plans_shutdown_recovery_group" {
  description = "Map of shutdown_recovery_group values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.shutdown_recovery_group if v.shutdown_recovery_group != null && length(v.shutdown_recovery_group) > 0 }
}
output "site_recovery_replication_recovery_plans_source_recovery_fabric_id" {
  description = "Map of source_recovery_fabric_id values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.source_recovery_fabric_id if v.source_recovery_fabric_id != null && length(v.source_recovery_fabric_id) > 0 }
}
output "site_recovery_replication_recovery_plans_target_recovery_fabric_id" {
  description = "Map of target_recovery_fabric_id values across all site_recovery_replication_recovery_plans, keyed the same as var.site_recovery_replication_recovery_plans"
  value       = { for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : k => v.target_recovery_fabric_id if v.target_recovery_fabric_id != null && length(v.target_recovery_fabric_id) > 0 }
}

