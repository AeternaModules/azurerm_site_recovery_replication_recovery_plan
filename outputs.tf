output "site_recovery_replication_recovery_plans" {
  description = "All site_recovery_replication_recovery_plan resources"
  value       = azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans
}
output "site_recovery_replication_recovery_plans_azure_to_azure_settings" {
  description = "List of azure_to_azure_settings values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.azure_to_azure_settings]
}
output "site_recovery_replication_recovery_plans_boot_recovery_group" {
  description = "List of boot_recovery_group values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.boot_recovery_group]
}
output "site_recovery_replication_recovery_plans_failover_recovery_group" {
  description = "List of failover_recovery_group values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.failover_recovery_group]
}
output "site_recovery_replication_recovery_plans_name" {
  description = "List of name values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.name]
}
output "site_recovery_replication_recovery_plans_recovery_vault_id" {
  description = "List of recovery_vault_id values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.recovery_vault_id]
}
output "site_recovery_replication_recovery_plans_shutdown_recovery_group" {
  description = "List of shutdown_recovery_group values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.shutdown_recovery_group]
}
output "site_recovery_replication_recovery_plans_source_recovery_fabric_id" {
  description = "List of source_recovery_fabric_id values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.source_recovery_fabric_id]
}
output "site_recovery_replication_recovery_plans_target_recovery_fabric_id" {
  description = "List of target_recovery_fabric_id values across all site_recovery_replication_recovery_plans"
  value       = [for k, v in azurerm_site_recovery_replication_recovery_plan.site_recovery_replication_recovery_plans : v.target_recovery_fabric_id]
}

