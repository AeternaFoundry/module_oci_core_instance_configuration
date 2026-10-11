resource "oci_core_instance_configuration" "core_instance_configurations" {
  for_each = var.core_instance_configurations

  compartment_id = each.value.compartment_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  instance_id    = each.value.instance_id
  source         = each.value.source

  dynamic "gmc_configs" {
    for_each = each.value.gmc_configs != null ? [each.value.gmc_configs] : []
    content {
      availability_domain = gmc_configs.value.availability_domain
      compartment_id      = gmc_configs.value.compartment_id
      defined_tags        = gmc_configs.value.defined_tags
      display_name        = gmc_configs.value.display_name
      freeform_tags       = gmc_configs.value.freeform_tags
      dynamic "gpu_memory_cluster_scale_config" {
        for_each = gmc_configs.value.gpu_memory_cluster_scale_config != null ? [gmc_configs.value.gpu_memory_cluster_scale_config] : []
        content {
          is_downsize_enabled = gpu_memory_cluster_scale_config.value.is_downsize_enabled
          is_upsize_enabled   = gpu_memory_cluster_scale_config.value.is_upsize_enabled
          target_size         = gpu_memory_cluster_scale_config.value.target_size
        }
      }
      instance_configuration_id = gmc_configs.value.instance_configuration_id
      size                      = gmc_configs.value.size
    }
  }

  dynamic "instance_details" {
    for_each = each.value.instance_details != null ? [each.value.instance_details] : []
    content {
      dynamic "block_volumes" {
        for_each = instance_details.value.block_volumes != null ? instance_details.value.block_volumes : []
        content {
          dynamic "attach_details" {
            for_each = block_volumes.value.attach_details != null ? [block_volumes.value.attach_details] : []
            content {
              device                              = attach_details.value.device
              display_name                        = attach_details.value.display_name
              is_pv_encryption_in_transit_enabled = attach_details.value.is_pv_encryption_in_transit_enabled
              is_read_only                        = attach_details.value.is_read_only
              is_shareable                        = attach_details.value.is_shareable
              type                                = attach_details.value.type
              use_chap                            = attach_details.value.use_chap
            }
          }
          dynamic "create_details" {
            for_each = block_volumes.value.create_details != null ? [block_volumes.value.create_details] : []
            content {
              dynamic "autotune_policies" {
                for_each = create_details.value.autotune_policies != null ? create_details.value.autotune_policies : []
                content {
                  autotune_type   = autotune_policies.value.autotune_type
                  max_vpus_per_gb = autotune_policies.value.max_vpus_per_gb
                }
              }
              availability_domain = create_details.value.availability_domain
              backup_policy_id    = create_details.value.backup_policy_id
              dynamic "block_volume_replicas" {
                for_each = create_details.value.block_volume_replicas != null ? [create_details.value.block_volume_replicas] : []
                content {
                  availability_domain = block_volume_replicas.value.availability_domain
                  display_name        = block_volume_replicas.value.display_name
                }
              }
              cluster_placement_group_id = create_details.value.cluster_placement_group_id
              compartment_id             = create_details.value.compartment_id
              defined_tags               = create_details.value.defined_tags
              display_name               = create_details.value.display_name
              freeform_tags              = create_details.value.freeform_tags
              is_auto_tune_enabled       = create_details.value.is_auto_tune_enabled
              is_reservations_enabled    = create_details.value.is_reservations_enabled
              kms_key_id                 = create_details.value.kms_key_id
              size_in_gbs                = create_details.value.size_in_gbs
              dynamic "source_details" {
                for_each = create_details.value.source_details != null ? [create_details.value.source_details] : []
                content {
                  id   = source_details.value.id
                  type = source_details.value.type
                }
              }
              vpus_per_gb    = create_details.value.vpus_per_gb
              xrc_kms_key_id = create_details.value.xrc_kms_key_id
            }
          }
          volume_id = block_volumes.value.volume_id
        }
      }
      instance_type = instance_details.value.instance_type
      dynamic "launch_details" {
        for_each = instance_details.value.launch_details != null ? [instance_details.value.launch_details] : []
        content {
          dynamic "agent_config" {
            for_each = launch_details.value.agent_config != null ? [launch_details.value.agent_config] : []
            content {
              are_all_plugins_disabled = agent_config.value.are_all_plugins_disabled
              is_management_disabled   = agent_config.value.is_management_disabled
              is_monitoring_disabled   = agent_config.value.is_monitoring_disabled
              dynamic "plugins_config" {
                for_each = agent_config.value.plugins_config != null ? agent_config.value.plugins_config : []
                content {
                  desired_state = plugins_config.value.desired_state
                  name          = plugins_config.value.name
                }
              }
            }
          }
          dynamic "availability_config" {
            for_each = launch_details.value.availability_config != null ? [launch_details.value.availability_config] : []
            content {
              is_live_migration_preferred = availability_config.value.is_live_migration_preferred
              recovery_action             = availability_config.value.recovery_action
            }
          }
          availability_domain        = launch_details.value.availability_domain
          capacity_reservation_id    = launch_details.value.capacity_reservation_id
          cluster_placement_group_id = launch_details.value.cluster_placement_group_id
          compartment_id             = launch_details.value.compartment_id
          compute_cluster_id         = launch_details.value.compute_cluster_id
          dynamic "create_vnic_details" {
            for_each = launch_details.value.create_vnic_details != null ? [launch_details.value.create_vnic_details] : []
            content {
              assign_ipv6ip             = create_vnic_details.value.assign_ipv6ip
              assign_private_dns_record = create_vnic_details.value.assign_private_dns_record
              assign_public_ip          = create_vnic_details.value.assign_public_ip
              defined_tags              = create_vnic_details.value.defined_tags
              display_name              = create_vnic_details.value.display_name
              freeform_tags             = create_vnic_details.value.freeform_tags
              hostname_label            = create_vnic_details.value.hostname_label
              dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
                for_each = create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details != null ? create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details : []
                content {
                  ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
                  ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
                  ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
                }
              }
              nsg_ids                = create_vnic_details.value.nsg_ids
              private_ip             = create_vnic_details.value.private_ip
              private_ip_id          = create_vnic_details.value.private_ip_id
              security_attributes    = create_vnic_details.value.security_attributes
              skip_source_dest_check = create_vnic_details.value.skip_source_dest_check
              subnet_cidr            = create_vnic_details.value.subnet_cidr
              subnet_id              = create_vnic_details.value.subnet_id
            }
          }
          dedicated_vm_host_id = launch_details.value.dedicated_vm_host_id
          defined_tags         = launch_details.value.defined_tags
          display_name         = launch_details.value.display_name
          extended_metadata    = launch_details.value.extended_metadata
          fault_domain         = launch_details.value.fault_domain
          freeform_tags        = launch_details.value.freeform_tags
          dynamic "instance_options" {
            for_each = launch_details.value.instance_options != null ? [launch_details.value.instance_options] : []
            content {
              are_legacy_imds_endpoints_disabled = instance_options.value.are_legacy_imds_endpoints_disabled
            }
          }
          ipxe_script                         = launch_details.value.ipxe_script
          is_ai_enterprise_enabled            = launch_details.value.is_ai_enterprise_enabled
          is_pv_encryption_in_transit_enabled = launch_details.value.is_pv_encryption_in_transit_enabled
          launch_mode                         = launch_details.value.launch_mode
          dynamic "launch_options" {
            for_each = launch_details.value.launch_options != null ? [launch_details.value.launch_options] : []
            content {
              boot_volume_type                    = launch_options.value.boot_volume_type
              firmware                            = launch_options.value.firmware
              is_consistent_volume_naming_enabled = launch_options.value.is_consistent_volume_naming_enabled
              is_pv_encryption_in_transit_enabled = launch_options.value.is_pv_encryption_in_transit_enabled
              network_type                        = launch_options.value.network_type
              remote_data_volume_type             = launch_options.value.remote_data_volume_type
            }
          }
          dynamic "licensing_configs" {
            for_each = launch_details.value.licensing_configs != null ? [launch_details.value.licensing_configs] : []
            content {
              license_type = licensing_configs.value.license_type
              type         = licensing_configs.value.type
            }
          }
          metadata = launch_details.value.metadata
          dynamic "placement_constraint_details" {
            for_each = launch_details.value.placement_constraint_details != null ? [launch_details.value.placement_constraint_details] : []
            content {
              compute_host_group_id = placement_constraint_details.value.compute_host_group_id
              type                  = placement_constraint_details.value.type
            }
          }
          dynamic "platform_config" {
            for_each = launch_details.value.platform_config != null ? [launch_details.value.platform_config] : []
            content {
              are_virtual_instructions_enabled               = platform_config.value.are_virtual_instructions_enabled
              config_map                                     = platform_config.value.config_map
              is_access_control_service_enabled              = platform_config.value.is_access_control_service_enabled
              is_input_output_memory_management_unit_enabled = platform_config.value.is_input_output_memory_management_unit_enabled
              is_measured_boot_enabled                       = platform_config.value.is_measured_boot_enabled
              is_memory_encryption_enabled                   = platform_config.value.is_memory_encryption_enabled
              is_secure_boot_enabled                         = platform_config.value.is_secure_boot_enabled
              is_symmetric_multi_threading_enabled           = platform_config.value.is_symmetric_multi_threading_enabled
              is_trusted_platform_module_enabled             = platform_config.value.is_trusted_platform_module_enabled
              numa_nodes_per_socket                          = platform_config.value.numa_nodes_per_socket
              percentage_of_cores_enabled                    = platform_config.value.percentage_of_cores_enabled
              type                                           = platform_config.value.type
            }
          }
          dynamic "preemptible_instance_config" {
            for_each = launch_details.value.preemptible_instance_config != null ? [launch_details.value.preemptible_instance_config] : []
            content {
              dynamic "preemption_action" {
                for_each = preemptible_instance_config.value.preemption_action != null ? [preemptible_instance_config.value.preemption_action] : []
                content {
                  preserve_boot_volume = preemption_action.value.preserve_boot_volume
                  type                 = preemption_action.value.type
                }
              }
            }
          }
          preferred_maintenance_action = launch_details.value.preferred_maintenance_action
          security_attributes          = launch_details.value.security_attributes
          shape                        = launch_details.value.shape
          dynamic "shape_config" {
            for_each = launch_details.value.shape_config != null ? [launch_details.value.shape_config] : []
            content {
              baseline_ocpu_utilization = shape_config.value.baseline_ocpu_utilization
              local_volume_size_in_gbs  = shape_config.value.local_volume_size_in_gbs
              memory_in_gbs             = shape_config.value.memory_in_gbs
              nvmes                     = shape_config.value.nvmes
              ocpus                     = shape_config.value.ocpus
              resource_management       = shape_config.value.resource_management
              vcpus                     = shape_config.value.vcpus
            }
          }
          dynamic "source_details" {
            for_each = launch_details.value.source_details != null ? [launch_details.value.source_details] : []
            content {
              boot_volume_id          = source_details.value.boot_volume_id
              boot_volume_size_in_gbs = source_details.value.boot_volume_size_in_gbs
              boot_volume_vpus_per_gb = source_details.value.boot_volume_vpus_per_gb
              image_id                = source_details.value.image_id
              dynamic "instance_source_image_filter_details" {
                for_each = source_details.value.instance_source_image_filter_details != null ? [source_details.value.instance_source_image_filter_details] : []
                content {
                  compartment_id           = instance_source_image_filter_details.value.compartment_id
                  defined_tags_filter      = instance_source_image_filter_details.value.defined_tags_filter
                  operating_system         = instance_source_image_filter_details.value.operating_system
                  operating_system_version = instance_source_image_filter_details.value.operating_system_version
                }
              }
              kms_key_id  = source_details.value.kms_key_id
              source_type = source_details.value.source_type
            }
          }
        }
      }
      dynamic "options" {
        for_each = instance_details.value.options != null ? instance_details.value.options : []
        content {
          dynamic "block_volumes" {
            for_each = options.value.block_volumes != null ? options.value.block_volumes : []
            content {
              dynamic "attach_details" {
                for_each = block_volumes.value.attach_details != null ? [block_volumes.value.attach_details] : []
                content {
                  device                              = attach_details.value.device
                  display_name                        = attach_details.value.display_name
                  is_pv_encryption_in_transit_enabled = attach_details.value.is_pv_encryption_in_transit_enabled
                  is_read_only                        = attach_details.value.is_read_only
                  is_shareable                        = attach_details.value.is_shareable
                  type                                = attach_details.value.type
                  use_chap                            = attach_details.value.use_chap
                }
              }
              dynamic "create_details" {
                for_each = block_volumes.value.create_details != null ? [block_volumes.value.create_details] : []
                content {
                  dynamic "autotune_policies" {
                    for_each = create_details.value.autotune_policies != null ? create_details.value.autotune_policies : []
                    content {
                      autotune_type   = autotune_policies.value.autotune_type
                      max_vpus_per_gb = autotune_policies.value.max_vpus_per_gb
                    }
                  }
                  availability_domain = create_details.value.availability_domain
                  backup_policy_id    = create_details.value.backup_policy_id
                  dynamic "block_volume_replicas" {
                    for_each = create_details.value.block_volume_replicas != null ? [create_details.value.block_volume_replicas] : []
                    content {
                      availability_domain = block_volume_replicas.value.availability_domain
                      display_name        = block_volume_replicas.value.display_name
                    }
                  }
                  cluster_placement_group_id = create_details.value.cluster_placement_group_id
                  compartment_id             = create_details.value.compartment_id
                  defined_tags               = create_details.value.defined_tags
                  display_name               = create_details.value.display_name
                  freeform_tags              = create_details.value.freeform_tags
                  is_auto_tune_enabled       = create_details.value.is_auto_tune_enabled
                  is_reservations_enabled    = create_details.value.is_reservations_enabled
                  kms_key_id                 = create_details.value.kms_key_id
                  size_in_gbs                = create_details.value.size_in_gbs
                  dynamic "source_details" {
                    for_each = create_details.value.source_details != null ? [create_details.value.source_details] : []
                    content {
                      id   = source_details.value.id
                      type = source_details.value.type
                    }
                  }
                  vpus_per_gb    = create_details.value.vpus_per_gb
                  xrc_kms_key_id = create_details.value.xrc_kms_key_id
                }
              }
              volume_id = block_volumes.value.volume_id
            }
          }
          dynamic "launch_details" {
            for_each = options.value.launch_details != null ? [options.value.launch_details] : []
            content {
              dynamic "agent_config" {
                for_each = launch_details.value.agent_config != null ? [launch_details.value.agent_config] : []
                content {
                  are_all_plugins_disabled = agent_config.value.are_all_plugins_disabled
                  is_management_disabled   = agent_config.value.is_management_disabled
                  is_monitoring_disabled   = agent_config.value.is_monitoring_disabled
                  dynamic "plugins_config" {
                    for_each = agent_config.value.plugins_config != null ? agent_config.value.plugins_config : []
                    content {
                      desired_state = plugins_config.value.desired_state
                      name          = plugins_config.value.name
                    }
                  }
                }
              }
              dynamic "availability_config" {
                for_each = launch_details.value.availability_config != null ? [launch_details.value.availability_config] : []
                content {
                  is_live_migration_preferred = availability_config.value.is_live_migration_preferred
                  recovery_action             = availability_config.value.recovery_action
                }
              }
              availability_domain        = launch_details.value.availability_domain
              capacity_reservation_id    = launch_details.value.capacity_reservation_id
              cluster_placement_group_id = launch_details.value.cluster_placement_group_id
              compartment_id             = launch_details.value.compartment_id
              compute_cluster_id         = launch_details.value.compute_cluster_id
              dynamic "create_vnic_details" {
                for_each = launch_details.value.create_vnic_details != null ? [launch_details.value.create_vnic_details] : []
                content {
                  assign_ipv6ip             = create_vnic_details.value.assign_ipv6ip
                  assign_private_dns_record = create_vnic_details.value.assign_private_dns_record
                  assign_public_ip          = create_vnic_details.value.assign_public_ip
                  defined_tags              = create_vnic_details.value.defined_tags
                  display_name              = create_vnic_details.value.display_name
                  freeform_tags             = create_vnic_details.value.freeform_tags
                  hostname_label            = create_vnic_details.value.hostname_label
                  dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
                    for_each = create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details != null ? create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details : []
                    content {
                      ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
                      ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
                      ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
                    }
                  }
                  nsg_ids                = create_vnic_details.value.nsg_ids
                  private_ip             = create_vnic_details.value.private_ip
                  private_ip_id          = create_vnic_details.value.private_ip_id
                  security_attributes    = create_vnic_details.value.security_attributes
                  skip_source_dest_check = create_vnic_details.value.skip_source_dest_check
                  subnet_cidr            = create_vnic_details.value.subnet_cidr
                  subnet_id              = create_vnic_details.value.subnet_id
                }
              }
              dedicated_vm_host_id = launch_details.value.dedicated_vm_host_id
              defined_tags         = launch_details.value.defined_tags
              display_name         = launch_details.value.display_name
              extended_metadata    = launch_details.value.extended_metadata
              fault_domain         = launch_details.value.fault_domain
              freeform_tags        = launch_details.value.freeform_tags
              dynamic "instance_options" {
                for_each = launch_details.value.instance_options != null ? [launch_details.value.instance_options] : []
                content {
                  are_legacy_imds_endpoints_disabled = instance_options.value.are_legacy_imds_endpoints_disabled
                }
              }
              ipxe_script                         = launch_details.value.ipxe_script
              is_ai_enterprise_enabled            = launch_details.value.is_ai_enterprise_enabled
              is_pv_encryption_in_transit_enabled = launch_details.value.is_pv_encryption_in_transit_enabled
              launch_mode                         = launch_details.value.launch_mode
              dynamic "launch_options" {
                for_each = launch_details.value.launch_options != null ? [launch_details.value.launch_options] : []
                content {
                  boot_volume_type                    = launch_options.value.boot_volume_type
                  firmware                            = launch_options.value.firmware
                  is_consistent_volume_naming_enabled = launch_options.value.is_consistent_volume_naming_enabled
                  is_pv_encryption_in_transit_enabled = launch_options.value.is_pv_encryption_in_transit_enabled
                  network_type                        = launch_options.value.network_type
                  remote_data_volume_type             = launch_options.value.remote_data_volume_type
                }
              }
              dynamic "licensing_configs" {
                for_each = launch_details.value.licensing_configs != null ? [launch_details.value.licensing_configs] : []
                content {
                  license_type = licensing_configs.value.license_type
                  type         = licensing_configs.value.type
                }
              }
              metadata = launch_details.value.metadata
              dynamic "placement_constraint_details" {
                for_each = launch_details.value.placement_constraint_details != null ? [launch_details.value.placement_constraint_details] : []
                content {
                  compute_host_group_id = placement_constraint_details.value.compute_host_group_id
                  type                  = placement_constraint_details.value.type
                }
              }
              dynamic "platform_config" {
                for_each = launch_details.value.platform_config != null ? [launch_details.value.platform_config] : []
                content {
                  are_virtual_instructions_enabled               = platform_config.value.are_virtual_instructions_enabled
                  config_map                                     = platform_config.value.config_map
                  is_access_control_service_enabled              = platform_config.value.is_access_control_service_enabled
                  is_input_output_memory_management_unit_enabled = platform_config.value.is_input_output_memory_management_unit_enabled
                  is_measured_boot_enabled                       = platform_config.value.is_measured_boot_enabled
                  is_memory_encryption_enabled                   = platform_config.value.is_memory_encryption_enabled
                  is_secure_boot_enabled                         = platform_config.value.is_secure_boot_enabled
                  is_symmetric_multi_threading_enabled           = platform_config.value.is_symmetric_multi_threading_enabled
                  is_trusted_platform_module_enabled             = platform_config.value.is_trusted_platform_module_enabled
                  numa_nodes_per_socket                          = platform_config.value.numa_nodes_per_socket
                  percentage_of_cores_enabled                    = platform_config.value.percentage_of_cores_enabled
                  type                                           = platform_config.value.type
                }
              }
              dynamic "preemptible_instance_config" {
                for_each = launch_details.value.preemptible_instance_config != null ? [launch_details.value.preemptible_instance_config] : []
                content {
                  dynamic "preemption_action" {
                    for_each = preemptible_instance_config.value.preemption_action != null ? [preemptible_instance_config.value.preemption_action] : []
                    content {
                      preserve_boot_volume = preemption_action.value.preserve_boot_volume
                      type                 = preemption_action.value.type
                    }
                  }
                }
              }
              preferred_maintenance_action = launch_details.value.preferred_maintenance_action
              security_attributes          = launch_details.value.security_attributes
              shape                        = launch_details.value.shape
              dynamic "shape_config" {
                for_each = launch_details.value.shape_config != null ? [launch_details.value.shape_config] : []
                content {
                  baseline_ocpu_utilization = shape_config.value.baseline_ocpu_utilization
                  local_volume_size_in_gbs  = shape_config.value.local_volume_size_in_gbs
                  memory_in_gbs             = shape_config.value.memory_in_gbs
                  nvmes                     = shape_config.value.nvmes
                  ocpus                     = shape_config.value.ocpus
                  resource_management       = shape_config.value.resource_management
                  vcpus                     = shape_config.value.vcpus
                }
              }
              dynamic "source_details" {
                for_each = launch_details.value.source_details != null ? [launch_details.value.source_details] : []
                content {
                  boot_volume_id          = source_details.value.boot_volume_id
                  boot_volume_size_in_gbs = source_details.value.boot_volume_size_in_gbs
                  boot_volume_vpus_per_gb = source_details.value.boot_volume_vpus_per_gb
                  image_id                = source_details.value.image_id
                  dynamic "instance_source_image_filter_details" {
                    for_each = source_details.value.instance_source_image_filter_details != null ? [source_details.value.instance_source_image_filter_details] : []
                    content {
                      compartment_id           = instance_source_image_filter_details.value.compartment_id
                      defined_tags_filter      = instance_source_image_filter_details.value.defined_tags_filter
                      operating_system         = instance_source_image_filter_details.value.operating_system
                      operating_system_version = instance_source_image_filter_details.value.operating_system_version
                    }
                  }
                  kms_key_id  = source_details.value.kms_key_id
                  source_type = source_details.value.source_type
                }
              }
            }
          }
          dynamic "secondary_vnics" {
            for_each = options.value.secondary_vnics != null ? options.value.secondary_vnics : []
            content {
              dynamic "create_vnic_details" {
                for_each = secondary_vnics.value.create_vnic_details != null ? [secondary_vnics.value.create_vnic_details] : []
                content {
                  assign_ipv6ip             = create_vnic_details.value.assign_ipv6ip
                  assign_private_dns_record = create_vnic_details.value.assign_private_dns_record
                  assign_public_ip          = create_vnic_details.value.assign_public_ip
                  defined_tags              = create_vnic_details.value.defined_tags
                  display_name              = create_vnic_details.value.display_name
                  freeform_tags             = create_vnic_details.value.freeform_tags
                  hostname_label            = create_vnic_details.value.hostname_label
                  dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
                    for_each = create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details != null ? create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details : []
                    content {
                      ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
                      ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
                      ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
                    }
                  }
                  nsg_ids                = create_vnic_details.value.nsg_ids
                  private_ip             = create_vnic_details.value.private_ip
                  private_ip_id          = create_vnic_details.value.private_ip_id
                  security_attributes    = create_vnic_details.value.security_attributes
                  skip_source_dest_check = create_vnic_details.value.skip_source_dest_check
                  subnet_cidr            = create_vnic_details.value.subnet_cidr
                  subnet_id              = create_vnic_details.value.subnet_id
                }
              }
              display_name = secondary_vnics.value.display_name
              nic_index    = secondary_vnics.value.nic_index
            }
          }
        }
      }
      dynamic "secondary_vnics" {
        for_each = instance_details.value.secondary_vnics != null ? instance_details.value.secondary_vnics : []
        content {
          dynamic "create_vnic_details" {
            for_each = secondary_vnics.value.create_vnic_details != null ? [secondary_vnics.value.create_vnic_details] : []
            content {
              assign_ipv6ip             = create_vnic_details.value.assign_ipv6ip
              assign_private_dns_record = create_vnic_details.value.assign_private_dns_record
              assign_public_ip          = create_vnic_details.value.assign_public_ip
              defined_tags              = create_vnic_details.value.defined_tags
              display_name              = create_vnic_details.value.display_name
              freeform_tags             = create_vnic_details.value.freeform_tags
              hostname_label            = create_vnic_details.value.hostname_label
              dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
                for_each = create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details != null ? create_vnic_details.value.ipv6address_ipv6subnet_cidr_pair_details : []
                content {
                  ipv6address     = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6address
                  ipv6id          = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6id
                  ipv6subnet_cidr = ipv6address_ipv6subnet_cidr_pair_details.value.ipv6subnet_cidr
                }
              }
              nsg_ids                = create_vnic_details.value.nsg_ids
              private_ip             = create_vnic_details.value.private_ip
              private_ip_id          = create_vnic_details.value.private_ip_id
              security_attributes    = create_vnic_details.value.security_attributes
              skip_source_dest_check = create_vnic_details.value.skip_source_dest_check
              subnet_cidr            = create_vnic_details.value.subnet_cidr
              subnet_id              = create_vnic_details.value.subnet_id
            }
          }
          display_name = secondary_vnics.value.display_name
          nic_index    = secondary_vnics.value.nic_index
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

