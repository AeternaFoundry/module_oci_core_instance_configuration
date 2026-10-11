variable "core_instance_configurations" {
  description = <<EOT
Map of core_instance_configurations, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - instance_id
    - source
    - gmc_configs (block):
        - availability_domain (required)
        - compartment_id (required)
        - defined_tags (optional)
        - display_name (optional)
        - freeform_tags (optional)
        - gpu_memory_cluster_scale_config (optional, block):
            - is_downsize_enabled (optional)
            - is_upsize_enabled (required)
            - target_size (optional)
        - instance_configuration_id (required)
        - size (optional)
    - instance_details (block):
        - block_volumes (optional, block):
            - attach_details (optional, block):
                - device (optional)
                - display_name (optional)
                - is_pv_encryption_in_transit_enabled (optional)
                - is_read_only (optional)
                - is_shareable (optional)
                - type (required)
                - use_chap (optional)
            - create_details (optional, block):
                - autotune_policies (optional, block):
                    - autotune_type (required)
                    - max_vpus_per_gb (optional)
                - availability_domain (optional)
                - backup_policy_id (optional)
                - block_volume_replicas (optional, block):
                    - availability_domain (required)
                    - display_name (optional)
                - cluster_placement_group_id (optional)
                - compartment_id (optional)
                - defined_tags (optional)
                - display_name (optional)
                - freeform_tags (optional)
                - is_auto_tune_enabled (optional)
                - is_reservations_enabled (optional)
                - kms_key_id (optional)
                - size_in_gbs (optional)
                - source_details (optional, block):
                    - id (optional)
                    - type (required)
                - vpus_per_gb (optional)
                - xrc_kms_key_id (optional)
            - volume_id (optional)
        - instance_type (required)
        - launch_details (optional, block):
            - agent_config (optional, block):
                - are_all_plugins_disabled (optional)
                - is_management_disabled (optional)
                - is_monitoring_disabled (optional)
                - plugins_config (optional, block):
                    - desired_state (optional)
                    - name (optional)
            - availability_config (optional, block):
                - is_live_migration_preferred (optional)
                - recovery_action (optional)
            - availability_domain (optional)
            - capacity_reservation_id (optional)
            - cluster_placement_group_id (optional)
            - compartment_id (optional)
            - compute_cluster_id (optional)
            - create_vnic_details (optional, block):
                - assign_ipv6ip (optional)
                - assign_private_dns_record (optional)
                - assign_public_ip (optional)
                - defined_tags (optional)
                - display_name (optional)
                - freeform_tags (optional)
                - hostname_label (optional)
                - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
                    - ipv6address (optional)
                    - ipv6id (optional)
                    - ipv6subnet_cidr (optional)
                - nsg_ids (optional)
                - private_ip (optional)
                - private_ip_id (optional)
                - security_attributes (optional)
                - skip_source_dest_check (optional)
                - subnet_cidr (optional)
                - subnet_id (optional)
            - dedicated_vm_host_id (optional)
            - defined_tags (optional)
            - display_name (optional)
            - extended_metadata (optional)
            - fault_domain (optional)
            - freeform_tags (optional)
            - instance_options (optional, block):
                - are_legacy_imds_endpoints_disabled (optional)
            - ipxe_script (optional)
            - is_ai_enterprise_enabled (optional)
            - is_pv_encryption_in_transit_enabled (optional)
            - launch_mode (optional)
            - launch_options (optional, block):
                - boot_volume_type (optional)
                - firmware (optional)
                - is_consistent_volume_naming_enabled (optional)
                - is_pv_encryption_in_transit_enabled (optional)
                - network_type (optional)
                - remote_data_volume_type (optional)
            - licensing_configs (optional, block):
                - license_type (optional)
                - type (required)
            - metadata (optional)
            - placement_constraint_details (optional, block):
                - compute_host_group_id (required)
                - type (required)
            - platform_config (optional, block):
                - are_virtual_instructions_enabled (optional)
                - config_map (optional)
                - is_access_control_service_enabled (optional)
                - is_input_output_memory_management_unit_enabled (optional)
                - is_measured_boot_enabled (optional)
                - is_memory_encryption_enabled (optional)
                - is_secure_boot_enabled (optional)
                - is_symmetric_multi_threading_enabled (optional)
                - is_trusted_platform_module_enabled (optional)
                - numa_nodes_per_socket (optional)
                - percentage_of_cores_enabled (optional)
                - type (required)
            - preemptible_instance_config (optional, block):
                - preemption_action (optional, block):
                    - preserve_boot_volume (optional)
                    - type (required)
            - preferred_maintenance_action (optional)
            - security_attributes (optional)
            - shape (optional)
            - shape_config (optional, block):
                - baseline_ocpu_utilization (optional)
                - local_volume_size_in_gbs (optional)
                - memory_in_gbs (optional)
                - nvmes (optional)
                - ocpus (optional)
                - resource_management (optional)
                - vcpus (optional)
            - source_details (optional, block):
                - boot_volume_id (optional)
                - boot_volume_size_in_gbs (optional)
                - boot_volume_vpus_per_gb (optional)
                - image_id (optional)
                - instance_source_image_filter_details (optional, block):
                    - compartment_id (optional)
                    - defined_tags_filter (optional)
                    - operating_system (optional)
                    - operating_system_version (optional)
                - kms_key_id (optional)
                - source_type (required)
        - options (optional, block):
            - block_volumes (optional, block):
                - attach_details (optional, block):
                    - device (optional)
                    - display_name (optional)
                    - is_pv_encryption_in_transit_enabled (optional)
                    - is_read_only (optional)
                    - is_shareable (optional)
                    - type (required)
                    - use_chap (optional)
                - create_details (optional, block):
                    - autotune_policies (optional, block):
                        - autotune_type (required)
                        - max_vpus_per_gb (optional)
                    - availability_domain (optional)
                    - backup_policy_id (optional)
                    - block_volume_replicas (optional, block):
                        - availability_domain (required)
                        - display_name (optional)
                    - cluster_placement_group_id (optional)
                    - compartment_id (optional)
                    - defined_tags (optional)
                    - display_name (optional)
                    - freeform_tags (optional)
                    - is_auto_tune_enabled (optional)
                    - is_reservations_enabled (optional)
                    - kms_key_id (optional)
                    - size_in_gbs (optional)
                    - source_details (optional, block):
                        - id (optional)
                        - type (required)
                    - vpus_per_gb (optional)
                    - xrc_kms_key_id (optional)
                - volume_id (optional)
            - launch_details (optional, block):
                - agent_config (optional, block):
                    - are_all_plugins_disabled (optional)
                    - is_management_disabled (optional)
                    - is_monitoring_disabled (optional)
                    - plugins_config (optional, block):
                        - desired_state (optional)
                        - name (optional)
                - availability_config (optional, block):
                    - is_live_migration_preferred (optional)
                    - recovery_action (optional)
                - availability_domain (optional)
                - capacity_reservation_id (optional)
                - cluster_placement_group_id (optional)
                - compartment_id (optional)
                - compute_cluster_id (optional)
                - create_vnic_details (optional, block):
                    - assign_ipv6ip (optional)
                    - assign_private_dns_record (optional)
                    - assign_public_ip (optional)
                    - defined_tags (optional)
                    - display_name (optional)
                    - freeform_tags (optional)
                    - hostname_label (optional)
                    - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
                        - ipv6address (optional)
                        - ipv6id (optional)
                        - ipv6subnet_cidr (optional)
                    - nsg_ids (optional)
                    - private_ip (optional)
                    - private_ip_id (optional)
                    - security_attributes (optional)
                    - skip_source_dest_check (optional)
                    - subnet_cidr (optional)
                    - subnet_id (optional)
                - dedicated_vm_host_id (optional)
                - defined_tags (optional)
                - display_name (optional)
                - extended_metadata (optional)
                - fault_domain (optional)
                - freeform_tags (optional)
                - instance_options (optional, block):
                    - are_legacy_imds_endpoints_disabled (optional)
                - ipxe_script (optional)
                - is_ai_enterprise_enabled (optional)
                - is_pv_encryption_in_transit_enabled (optional)
                - launch_mode (optional)
                - launch_options (optional, block):
                    - boot_volume_type (optional)
                    - firmware (optional)
                    - is_consistent_volume_naming_enabled (optional)
                    - is_pv_encryption_in_transit_enabled (optional)
                    - network_type (optional)
                    - remote_data_volume_type (optional)
                - licensing_configs (optional, block):
                    - license_type (optional)
                    - type (required)
                - metadata (optional)
                - placement_constraint_details (optional, block):
                    - compute_host_group_id (required)
                    - type (required)
                - platform_config (optional, block):
                    - are_virtual_instructions_enabled (optional)
                    - config_map (optional)
                    - is_access_control_service_enabled (optional)
                    - is_input_output_memory_management_unit_enabled (optional)
                    - is_measured_boot_enabled (optional)
                    - is_memory_encryption_enabled (optional)
                    - is_secure_boot_enabled (optional)
                    - is_symmetric_multi_threading_enabled (optional)
                    - is_trusted_platform_module_enabled (optional)
                    - numa_nodes_per_socket (optional)
                    - percentage_of_cores_enabled (optional)
                    - type (required)
                - preemptible_instance_config (optional, block):
                    - preemption_action (optional, block):
                        - preserve_boot_volume (optional)
                        - type (required)
                - preferred_maintenance_action (optional)
                - security_attributes (optional)
                - shape (optional)
                - shape_config (optional, block):
                    - baseline_ocpu_utilization (optional)
                    - local_volume_size_in_gbs (optional)
                    - memory_in_gbs (optional)
                    - nvmes (optional)
                    - ocpus (optional)
                    - resource_management (optional)
                    - vcpus (optional)
                - source_details (optional, block):
                    - boot_volume_id (optional)
                    - boot_volume_size_in_gbs (optional)
                    - boot_volume_vpus_per_gb (optional)
                    - image_id (optional)
                    - instance_source_image_filter_details (optional, block):
                        - compartment_id (optional)
                        - defined_tags_filter (optional)
                        - operating_system (optional)
                        - operating_system_version (optional)
                    - kms_key_id (optional)
                    - source_type (required)
            - secondary_vnics (optional, block):
                - create_vnic_details (optional, block):
                    - assign_ipv6ip (optional)
                    - assign_private_dns_record (optional)
                    - assign_public_ip (optional)
                    - defined_tags (optional)
                    - display_name (optional)
                    - freeform_tags (optional)
                    - hostname_label (optional)
                    - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
                        - ipv6address (optional)
                        - ipv6id (optional)
                        - ipv6subnet_cidr (optional)
                    - nsg_ids (optional)
                    - private_ip (optional)
                    - private_ip_id (optional)
                    - security_attributes (optional)
                    - skip_source_dest_check (optional)
                    - subnet_cidr (optional)
                    - subnet_id (optional)
                - display_name (optional)
                - nic_index (optional)
        - secondary_vnics (optional, block):
            - create_vnic_details (optional, block):
                - assign_ipv6ip (optional)
                - assign_private_dns_record (optional)
                - assign_public_ip (optional)
                - defined_tags (optional)
                - display_name (optional)
                - freeform_tags (optional)
                - hostname_label (optional)
                - ipv6address_ipv6subnet_cidr_pair_details (optional, block):
                    - ipv6address (optional)
                    - ipv6id (optional)
                    - ipv6subnet_cidr (optional)
                - nsg_ids (optional)
                - private_ip (optional)
                - private_ip_id (optional)
                - security_attributes (optional)
                - skip_source_dest_check (optional)
                - subnet_cidr (optional)
                - subnet_id (optional)
            - display_name (optional)
            - nic_index (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    instance_id    = optional(string)
    source         = optional(string)
    gmc_configs = optional(object({
      availability_domain = string
      compartment_id      = string
      defined_tags        = optional(map(string))
      display_name        = optional(string)
      freeform_tags       = optional(map(string))
      gpu_memory_cluster_scale_config = optional(object({
        is_downsize_enabled = optional(bool)
        is_upsize_enabled   = bool
        target_size         = optional(string)
      }))
      instance_configuration_id = string
      size                      = optional(string)
    }))
    instance_details = optional(object({
      block_volumes = optional(list(object({
        attach_details = optional(object({
          device                              = optional(string)
          display_name                        = optional(string)
          is_pv_encryption_in_transit_enabled = optional(bool)
          is_read_only                        = optional(bool)
          is_shareable                        = optional(bool)
          type                                = string
          use_chap                            = optional(bool)
        }))
        create_details = optional(object({
          autotune_policies = optional(list(object({
            autotune_type   = string
            max_vpus_per_gb = optional(string)
          })))
          availability_domain = optional(string)
          backup_policy_id    = optional(string)
          block_volume_replicas = optional(object({
            availability_domain = string
            display_name        = optional(string)
          }))
          cluster_placement_group_id = optional(string)
          compartment_id             = optional(string)
          defined_tags               = optional(map(string))
          display_name               = optional(string)
          freeform_tags              = optional(map(string))
          is_auto_tune_enabled       = optional(bool)
          is_reservations_enabled    = optional(bool)
          kms_key_id                 = optional(string)
          size_in_gbs                = optional(string)
          source_details = optional(object({
            id   = optional(string)
            type = string
          }))
          vpus_per_gb    = optional(string)
          xrc_kms_key_id = optional(string)
        }))
        volume_id = optional(string)
      })))
      instance_type = string
      launch_details = optional(object({
        agent_config = optional(object({
          are_all_plugins_disabled = optional(bool)
          is_management_disabled   = optional(bool)
          is_monitoring_disabled   = optional(bool)
          plugins_config = optional(list(object({
            desired_state = optional(string)
            name          = optional(string)
          })))
        }))
        availability_config = optional(object({
          is_live_migration_preferred = optional(bool)
          recovery_action             = optional(string)
        }))
        availability_domain        = optional(string)
        capacity_reservation_id    = optional(string)
        cluster_placement_group_id = optional(string)
        compartment_id             = optional(string)
        compute_cluster_id         = optional(string)
        create_vnic_details = optional(object({
          assign_ipv6ip             = optional(bool)
          assign_private_dns_record = optional(bool)
          assign_public_ip          = optional(bool)
          defined_tags              = optional(map(string))
          display_name              = optional(string)
          freeform_tags             = optional(map(string))
          hostname_label            = optional(string)
          ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
            ipv6address     = optional(string)
            ipv6id          = optional(string)
            ipv6subnet_cidr = optional(string)
          })))
          nsg_ids                = optional(set(string))
          private_ip             = optional(string)
          private_ip_id          = optional(string)
          security_attributes    = optional(map(string))
          skip_source_dest_check = optional(bool)
          subnet_cidr            = optional(string)
          subnet_id              = optional(string)
        }))
        dedicated_vm_host_id = optional(string)
        defined_tags         = optional(map(string))
        display_name         = optional(string)
        extended_metadata    = optional(map(string))
        fault_domain         = optional(string)
        freeform_tags        = optional(map(string))
        instance_options = optional(object({
          are_legacy_imds_endpoints_disabled = optional(bool)
        }))
        ipxe_script                         = optional(string)
        is_ai_enterprise_enabled            = optional(bool)
        is_pv_encryption_in_transit_enabled = optional(bool)
        launch_mode                         = optional(string)
        launch_options = optional(object({
          boot_volume_type                    = optional(string)
          firmware                            = optional(string)
          is_consistent_volume_naming_enabled = optional(bool)
          is_pv_encryption_in_transit_enabled = optional(bool)
          network_type                        = optional(string)
          remote_data_volume_type             = optional(string)
        }))
        licensing_configs = optional(object({
          license_type = optional(string)
          type         = string
        }))
        metadata = optional(map(string))
        placement_constraint_details = optional(object({
          compute_host_group_id = string
          type                  = string
        }))
        platform_config = optional(object({
          are_virtual_instructions_enabled               = optional(bool)
          config_map                                     = optional(map(string))
          is_access_control_service_enabled              = optional(bool)
          is_input_output_memory_management_unit_enabled = optional(bool)
          is_measured_boot_enabled                       = optional(bool)
          is_memory_encryption_enabled                   = optional(bool)
          is_secure_boot_enabled                         = optional(bool)
          is_symmetric_multi_threading_enabled           = optional(bool)
          is_trusted_platform_module_enabled             = optional(bool)
          numa_nodes_per_socket                          = optional(string)
          percentage_of_cores_enabled                    = optional(number)
          type                                           = string
        }))
        preemptible_instance_config = optional(object({
          preemption_action = optional(object({
            preserve_boot_volume = optional(bool)
            type                 = string
          }))
        }))
        preferred_maintenance_action = optional(string)
        security_attributes          = optional(map(string))
        shape                        = optional(string)
        shape_config = optional(object({
          baseline_ocpu_utilization = optional(string)
          local_volume_size_in_gbs  = optional(number)
          memory_in_gbs             = optional(number)
          nvmes                     = optional(number)
          ocpus                     = optional(number)
          resource_management       = optional(string)
          vcpus                     = optional(number)
        }))
        source_details = optional(object({
          boot_volume_id          = optional(string)
          boot_volume_size_in_gbs = optional(string)
          boot_volume_vpus_per_gb = optional(string)
          image_id                = optional(string)
          instance_source_image_filter_details = optional(object({
            compartment_id           = optional(string)
            defined_tags_filter      = optional(map(string))
            operating_system         = optional(string)
            operating_system_version = optional(string)
          }))
          kms_key_id  = optional(string)
          source_type = string
        }))
      }))
      options = optional(list(object({
        block_volumes = optional(list(object({
          attach_details = optional(object({
            device                              = optional(string)
            display_name                        = optional(string)
            is_pv_encryption_in_transit_enabled = optional(bool)
            is_read_only                        = optional(bool)
            is_shareable                        = optional(bool)
            type                                = string
            use_chap                            = optional(bool)
          }))
          create_details = optional(object({
            autotune_policies = optional(list(object({
              autotune_type   = string
              max_vpus_per_gb = optional(string)
            })))
            availability_domain = optional(string)
            backup_policy_id    = optional(string)
            block_volume_replicas = optional(object({
              availability_domain = string
              display_name        = optional(string)
            }))
            cluster_placement_group_id = optional(string)
            compartment_id             = optional(string)
            defined_tags               = optional(map(string))
            display_name               = optional(string)
            freeform_tags              = optional(map(string))
            is_auto_tune_enabled       = optional(bool)
            is_reservations_enabled    = optional(bool)
            kms_key_id                 = optional(string)
            size_in_gbs                = optional(string)
            source_details = optional(object({
              id   = optional(string)
              type = string
            }))
            vpus_per_gb    = optional(string)
            xrc_kms_key_id = optional(string)
          }))
          volume_id = optional(string)
        })))
        launch_details = optional(object({
          agent_config = optional(object({
            are_all_plugins_disabled = optional(bool)
            is_management_disabled   = optional(bool)
            is_monitoring_disabled   = optional(bool)
            plugins_config = optional(list(object({
              desired_state = optional(string)
              name          = optional(string)
            })))
          }))
          availability_config = optional(object({
            is_live_migration_preferred = optional(bool)
            recovery_action             = optional(string)
          }))
          availability_domain        = optional(string)
          capacity_reservation_id    = optional(string)
          cluster_placement_group_id = optional(string)
          compartment_id             = optional(string)
          compute_cluster_id         = optional(string)
          create_vnic_details = optional(object({
            assign_ipv6ip             = optional(bool)
            assign_private_dns_record = optional(bool)
            assign_public_ip          = optional(bool)
            defined_tags              = optional(map(string))
            display_name              = optional(string)
            freeform_tags             = optional(map(string))
            hostname_label            = optional(string)
            ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
              ipv6address     = optional(string)
              ipv6id          = optional(string)
              ipv6subnet_cidr = optional(string)
            })))
            nsg_ids                = optional(set(string))
            private_ip             = optional(string)
            private_ip_id          = optional(string)
            security_attributes    = optional(map(string))
            skip_source_dest_check = optional(bool)
            subnet_cidr            = optional(string)
            subnet_id              = optional(string)
          }))
          dedicated_vm_host_id = optional(string)
          defined_tags         = optional(map(string))
          display_name         = optional(string)
          extended_metadata    = optional(map(string))
          fault_domain         = optional(string)
          freeform_tags        = optional(map(string))
          instance_options = optional(object({
            are_legacy_imds_endpoints_disabled = optional(bool)
          }))
          ipxe_script                         = optional(string)
          is_ai_enterprise_enabled            = optional(bool)
          is_pv_encryption_in_transit_enabled = optional(bool)
          launch_mode                         = optional(string)
          launch_options = optional(object({
            boot_volume_type                    = optional(string)
            firmware                            = optional(string)
            is_consistent_volume_naming_enabled = optional(bool)
            is_pv_encryption_in_transit_enabled = optional(bool)
            network_type                        = optional(string)
            remote_data_volume_type             = optional(string)
          }))
          licensing_configs = optional(object({
            license_type = optional(string)
            type         = string
          }))
          metadata = optional(map(string))
          placement_constraint_details = optional(object({
            compute_host_group_id = string
            type                  = string
          }))
          platform_config = optional(object({
            are_virtual_instructions_enabled               = optional(bool)
            config_map                                     = optional(map(string))
            is_access_control_service_enabled              = optional(bool)
            is_input_output_memory_management_unit_enabled = optional(bool)
            is_measured_boot_enabled                       = optional(bool)
            is_memory_encryption_enabled                   = optional(bool)
            is_secure_boot_enabled                         = optional(bool)
            is_symmetric_multi_threading_enabled           = optional(bool)
            is_trusted_platform_module_enabled             = optional(bool)
            numa_nodes_per_socket                          = optional(string)
            percentage_of_cores_enabled                    = optional(number)
            type                                           = string
          }))
          preemptible_instance_config = optional(object({
            preemption_action = optional(object({
              preserve_boot_volume = optional(bool)
              type                 = string
            }))
          }))
          preferred_maintenance_action = optional(string)
          security_attributes          = optional(map(string))
          shape                        = optional(string)
          shape_config = optional(object({
            baseline_ocpu_utilization = optional(string)
            local_volume_size_in_gbs  = optional(number)
            memory_in_gbs             = optional(number)
            nvmes                     = optional(number)
            ocpus                     = optional(number)
            resource_management       = optional(string)
            vcpus                     = optional(number)
          }))
          source_details = optional(object({
            boot_volume_id          = optional(string)
            boot_volume_size_in_gbs = optional(string)
            boot_volume_vpus_per_gb = optional(string)
            image_id                = optional(string)
            instance_source_image_filter_details = optional(object({
              compartment_id           = optional(string)
              defined_tags_filter      = optional(map(string))
              operating_system         = optional(string)
              operating_system_version = optional(string)
            }))
            kms_key_id  = optional(string)
            source_type = string
          }))
        }))
        secondary_vnics = optional(list(object({
          create_vnic_details = optional(object({
            assign_ipv6ip             = optional(bool)
            assign_private_dns_record = optional(bool)
            assign_public_ip          = optional(bool)
            defined_tags              = optional(map(string))
            display_name              = optional(string)
            freeform_tags             = optional(map(string))
            hostname_label            = optional(string)
            ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
              ipv6address     = optional(string)
              ipv6id          = optional(string)
              ipv6subnet_cidr = optional(string)
            })))
            nsg_ids                = optional(set(string))
            private_ip             = optional(string)
            private_ip_id          = optional(string)
            security_attributes    = optional(map(string))
            skip_source_dest_check = optional(bool)
            subnet_cidr            = optional(string)
            subnet_id              = optional(string)
          }))
          display_name = optional(string)
          nic_index    = optional(number)
        })))
      })))
      secondary_vnics = optional(list(object({
        create_vnic_details = optional(object({
          assign_ipv6ip             = optional(bool)
          assign_private_dns_record = optional(bool)
          assign_public_ip          = optional(bool)
          defined_tags              = optional(map(string))
          display_name              = optional(string)
          freeform_tags             = optional(map(string))
          hostname_label            = optional(string)
          ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
            ipv6address     = optional(string)
            ipv6id          = optional(string)
            ipv6subnet_cidr = optional(string)
          })))
          nsg_ids                = optional(set(string))
          private_ip             = optional(string)
          private_ip_id          = optional(string)
          security_attributes    = optional(map(string))
          skip_source_dest_check = optional(bool)
          subnet_cidr            = optional(string)
          subnet_id              = optional(string)
        }))
        display_name = optional(string)
        nic_index    = optional(number)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (contains([for v in ["compute", "instance_options"] : lower(v)], lower(v.instance_details.instance_type)))
      )
    ])
    error_message = "must be one of: \"compute\", \"instance_options\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.block_volumes == null || alltrue([for item in v.instance_details.block_volumes : (item.attach_details == null || (contains([for v in ["iscsi", "paravirtualized"] : lower(v)], lower(item.attach_details.type))))]))
      )
    ])
    error_message = "must be one of: \"iscsi\", \"paravirtualized\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.block_volumes == null || alltrue([for item in v.instance_details.block_volumes : (item.create_details == null || (item.create_details.autotune_policies == null || alltrue([for item in item.create_details.autotune_policies : (contains([for v in ["DETACHED_VOLUME", "PERFORMANCE_BASED"] : lower(v)], lower(item.autotune_type)))])))]))
      )
    ])
    error_message = "must be one of: \"DETACHED_VOLUME\", \"PERFORMANCE_BASED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.block_volumes == null || alltrue([for item in v.instance_details.block_volumes : (item.create_details == null || (item.create_details.source_details == null || (contains([for v in ["volume", "volumeBackup"] : lower(v)], lower(item.create_details.source_details.type)))))]))
      )
    ])
    error_message = "must be one of: \"volume\", \"volumeBackup\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.launch_details == null || (v.instance_details.launch_details.placement_constraint_details == null || (contains([for v in ["HOST_GROUP"] : lower(v)], lower(v.instance_details.launch_details.placement_constraint_details.type)))))
      )
    ])
    error_message = "must be one of: \"HOST_GROUP\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.launch_details == null || (v.instance_details.launch_details.platform_config == null || (contains([for v in ["AMD_MILAN_BM", "AMD_MILAN_BM_GPU", "AMD_ROME_BM", "AMD_ROME_BM_GPU", "AMD_VM", "GENERIC_BM", "INTEL_ICELAKE_BM", "INTEL_SKYLAKE_BM", "INTEL_VM"] : lower(v)], lower(v.instance_details.launch_details.platform_config.type)))))
      )
    ])
    error_message = "must be one of: \"AMD_MILAN_BM\", \"AMD_MILAN_BM_GPU\", \"AMD_ROME_BM\", \"AMD_ROME_BM_GPU\", \"AMD_VM\", \"GENERIC_BM\", \"INTEL_ICELAKE_BM\", \"INTEL_SKYLAKE_BM\", \"INTEL_VM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.launch_details == null || (v.instance_details.launch_details.preemptible_instance_config == null || (v.instance_details.launch_details.preemptible_instance_config.preemption_action == null || (contains([for v in ["TERMINATE"] : lower(v)], lower(v.instance_details.launch_details.preemptible_instance_config.preemption_action.type))))))
      )
    ])
    error_message = "must be one of: \"TERMINATE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.launch_details == null || (v.instance_details.launch_details.source_details == null || (contains([for v in ["bootVolume", "image"] : lower(v)], lower(v.instance_details.launch_details.source_details.source_type)))))
      )
    ])
    error_message = "must be one of: \"bootVolume\", \"image\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.block_volumes == null || alltrue([for item in item.block_volumes : (item.attach_details == null || (contains([for v in ["iscsi", "paravirtualized"] : lower(v)], lower(item.attach_details.type))))]))]))
      )
    ])
    error_message = "must be one of: \"iscsi\", \"paravirtualized\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.block_volumes == null || alltrue([for item in item.block_volumes : (item.create_details == null || (item.create_details.autotune_policies == null || alltrue([for item in item.create_details.autotune_policies : (contains([for v in ["DETACHED_VOLUME", "PERFORMANCE_BASED"] : lower(v)], lower(item.autotune_type)))])))]))]))
      )
    ])
    error_message = "must be one of: \"DETACHED_VOLUME\", \"PERFORMANCE_BASED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.block_volumes == null || alltrue([for item in item.block_volumes : (item.create_details == null || (item.create_details.source_details == null || (contains([for v in ["volume", "volumeBackup"] : lower(v)], lower(item.create_details.source_details.type)))))]))]))
      )
    ])
    error_message = "must be one of: \"volume\", \"volumeBackup\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.launch_details == null || (item.launch_details.placement_constraint_details == null || (contains([for v in ["HOST_GROUP"] : lower(v)], lower(item.launch_details.placement_constraint_details.type)))))]))
      )
    ])
    error_message = "must be one of: \"HOST_GROUP\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.launch_details == null || (item.launch_details.platform_config == null || (contains([for v in ["AMD_MILAN_BM", "AMD_ROME_BM", "AMD_ROME_BM_GPU", "AMD_VM", "INTEL_ICELAKE_BM", "INTEL_SKYLAKE_BM", "INTEL_VM"] : lower(v)], lower(item.launch_details.platform_config.type)))))]))
      )
    ])
    error_message = "must be one of: \"AMD_MILAN_BM\", \"AMD_ROME_BM\", \"AMD_ROME_BM_GPU\", \"AMD_VM\", \"INTEL_ICELAKE_BM\", \"INTEL_SKYLAKE_BM\", \"INTEL_VM\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.launch_details == null || (item.launch_details.preemptible_instance_config == null || (item.launch_details.preemptible_instance_config.preemption_action == null || (contains([for v in ["TERMINATE"] : lower(v)], lower(item.launch_details.preemptible_instance_config.preemption_action.type))))))]))
      )
    ])
    error_message = "must be one of: \"TERMINATE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.instance_details == null || (v.instance_details.options == null || alltrue([for item in v.instance_details.options : (item.launch_details == null || (item.launch_details.source_details == null || (contains([for v in ["bootVolume", "image"] : lower(v)], lower(item.launch_details.source_details.source_type)))))]))
      )
    ])
    error_message = "must be one of: \"bootVolume\", \"image\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_instance_configurations : (
        v.source == null || (contains([for v in ["GMC", "INSTANCE", "NONE"] : lower(v)], lower(v.source)))
      )
    ])
    error_message = "must be one of: \"GMC\", \"INSTANCE\", \"NONE\""
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

