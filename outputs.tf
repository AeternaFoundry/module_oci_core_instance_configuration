output "core_instance_configurations_id" {
  description = "Map of id values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no id are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instance_configurations_compartment_id" {
  description = "Map of compartment_id values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_instance_configurations_deferred_fields" {
  description = "Map of deferred_fields values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no deferred_fields are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.deferred_fields if v.deferred_fields != null && length(v.deferred_fields) > 0 }
}
output "core_instance_configurations_defined_tags" {
  description = "Map of defined_tags values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_instance_configurations_display_name" {
  description = "Map of display_name values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no display_name are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_instance_configurations_freeform_tags" {
  description = "Map of freeform_tags values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_instance_configurations_gmc_configs" {
  description = "Map of gmc_configs values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no gmc_configs are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => one(v.gmc_configs) if v.gmc_configs != null && length(v.gmc_configs) > 0 }
}
output "core_instance_configurations_instance_details" {
  description = "Map of instance_details values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no instance_details are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => one(v.instance_details) if v.instance_details != null && length(v.instance_details) > 0 }
}
output "core_instance_configurations_instance_id" {
  description = "Map of instance_id values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no instance_id are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "core_instance_configurations_source" {
  description = "Map of source values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no source are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.source if v.source != null && length(v.source) > 0 }
}
output "core_instance_configurations_time_created" {
  description = "Map of time_created values across all core_instance_configurations, keyed the same as var.core_instance_configurations except keys with no time_created are omitted"
  value       = { for k, v in oci_core_instance_configuration.core_instance_configurations : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

