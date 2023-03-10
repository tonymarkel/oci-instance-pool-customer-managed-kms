## This configuration was generated by terraform-provider-oci

resource oci_core_instance_configuration instance-config {
  compartment_id = var.compartment_ocid
  display_name = "instance-config"
  freeform_tags = {
  }
  instance_details {
    instance_type = "compute" 
    launch_details {
      agent_config {
        are_all_plugins_disabled = "false"
        is_management_disabled   = "false"
        is_monitoring_disabled   = "false"
        plugins_config {
          desired_state = "DISABLED"
          name          = "Vulnerability Scanning"
        }
        plugins_config {
          desired_state = "DISABLED"
          name          = "Oracle Java Management Service"
        }
        plugins_config {
          desired_state = "ENABLED"
          name          = "OS Management Service Agent"
        }
        plugins_config {
          desired_state = "DISABLED"
          name          = "Management Agent"
        }
        plugins_config {
          desired_state = "ENABLED"
          name          = "Custom Logs Monitoring"
        }
        plugins_config {
          desired_state = "ENABLED"
          name          = "Compute Instance Run Command"
        }
        plugins_config {
          desired_state = "ENABLED"
          name          = "Compute Instance Monitoring"
        }
        plugins_config {
          desired_state = "DISABLED"
          name          = "Block Volume Management"
        }
        plugins_config {
          desired_state = "DISABLED"
          name          = "Bastion"
        }
      }
      availability_config {
        recovery_action = "RESTORE_INSTANCE"
      }
      compartment_id = var.compartment_ocid
      create_vnic_details {
        assign_private_dns_record = "true"
        assign_public_ip          = "false"
        display_name = "instance-config"
        freeform_tags = {
        }
        nsg_ids = [
        ]
        skip_source_dest_check = "false"
      }
      display_name = "instance-config"
      extended_metadata = {
      }
      instance_options {
        are_legacy_imds_endpoints_disabled = "false"
      }
      launch_mode                         = "PARAVIRTUALIZED"
      launch_options {
        boot_volume_type = ""
        firmware         = ""
        network_type            = "PARAVIRTUALIZED"
        remote_data_volume_type = ""
      }
      metadata = {
        "ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCUn5ZTTyeN68XJK7qS63Of4zlUq9IYIqo2BLFp/CwCtGtAuNbgOABVcKaeW2STcqEWJpRviVTs92nUy/TZCrCPi2hjDBU7ARrm+sZL6RncVBEVepJ7w8L0YpoJsidT9m4NCRfsrtKyZ3YZdsxgVXOV+QPjsJem6MMWfarrGiab2p3MCh4KDrxhr0cEuOxFBORj1tzWnqwbhIpMFSmmmRNAhoebgQuqVYIIp1c3U2Nmi/ZCXkjN8pfdLbuVHPVmfovcOP9doiCUedowfUMvL3NtcVpjXg5enC5sRkpwf+v1133xdy6V56a6uHZ7u9i4rSWsPIloMp+LUIzo0ZCMIj5x/xmBhyxi492A3oW6c/vAilEcdvVFem/2+ErhSkfOWXgOOUlB0qCq2pz25nn5RIZ+NBsEdLgts8uSdCDgJTeH06MKRq9Tur6UxEzqqBGFtmYkyaMnz7j7TZs1FWvc3k6GYoEEvYXs7EMNdCypvn0QDL7piOFrjdnn8x1Do0vzkl8= tony markel@tomarkel-Z1095395H"
      }
      preferred_maintenance_action = ""
      shape                        = "VM.Standard.E4.Flex"
      shape_config {
        baseline_ocpu_utilization = ""
        memory_in_gbs             = "8"
        ocpus = "1"
      }
      source_details {
        boot_volume_vpus_per_gb = "10"
        boot_volume_id          = oci_core_instance.instance-config.boot_volume_id
        # kms_key_id = var.kms_key_ocid
        source_type             = "image"
        image_id                = oci_core_image.pool-image.id
      }
    }
  }
  #instance_id = <<Optional value not found in discovery>>
  #source = <<Optional value not found in discovery>>
}

resource oci_core_instance_pool instance-pool {
  compartment_id = var.compartment_ocid
  display_name = "instance-pool"
  instance_configuration_id = oci_core_instance_configuration.instance-config.id
  placement_configurations {
    availability_domain = data.oci_identity_availability_domain.export_rgiR-US-ASHBURN-AD-1.name
    fault_domains = [
    ]
    primary_subnet_id = var.subnet
  }
  size  = "1"
}

resource oci_core_image pool-image {
    compartment_id = var.compartment_ocid
    instance_id = oci_core_instance.instance-config.id
}

resource oci_core_instance instance-config {
  agent_config {
    are_all_plugins_disabled = "false"
    is_management_disabled   = "false"
    is_monitoring_disabled   = "false"
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "OS Management Service Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }
  #async = <<Optional value not found in discovery>>
  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }
  availability_domain = var.availability_domain
  compartment_id = var.compartment_ocid
  create_vnic_details {
    assign_public_ip = "false"
    display_name = "instance-config"
    freeform_tags = {
    }
    hostname_label = "instance-config"
    nsg_ids = [
    ]
    private_ip             = "10.0.10.253"
    skip_source_dest_check = "false"
    subnet_id              = var.subnet
  }
  display_name = "instance-config"
  extended_metadata = {
  }
  fault_domain = var.fault_domain
  freeform_tags = {
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = "false"
  }
  #ipxe_script = <<Optional value not found in discovery>>
  #is_pv_encryption_in_transit_enabled = <<Optional value not found in discovery>>
  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = "true"
    is_pv_encryption_in_transit_enabled = "true"
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }
  metadata = {
    "ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCUn5ZTTyeN68XJK7qS63Of4zlUq9IYIqo2BLFp/CwCtGtAuNbgOABVcKaeW2STcqEWJpRviVTs92nUy/TZCrCPi2hjDBU7ARrm+sZL6RncVBEVepJ7w8L0YpoJsidT9m4NCRfsrtKyZ3YZdsxgVXOV+QPjsJem6MMWfarrGiab2p3MCh4KDrxhr0cEuOxFBORj1tzWnqwbhIpMFSmmmRNAhoebgQuqVYIIp1c3U2Nmi/ZCXkjN8pfdLbuVHPVmfovcOP9doiCUedowfUMvL3NtcVpjXg5enC5sRkpwf+v1133xdy6V56a6uHZ7u9i4rSWsPIloMp+LUIzo0ZCMIj5x/xmBhyxi492A3oW6c/vAilEcdvVFem/2+ErhSkfOWXgOOUlB0qCq2pz25nn5RIZ+NBsEdLgts8uSdCDgJTeH06MKRq9Tur6UxEzqqBGFtmYkyaMnz7j7TZs1FWvc3k6GYoEEvYXs7EMNdCypvn0QDL7piOFrjdnn8x1Do0vzkl8= tony markel@tomarkel-Z1095395H"
  }
  #preserve_boot_volume = <<Optional value not found in discovery>>
  shape = "VM.Standard.E4.Flex"
  shape_config {
    baseline_ocpu_utilization = ""
    memory_in_gbs             = "8"
    ocpus                     = "1"
  }
  source_details {
    boot_volume_size_in_gbs = "100"
    boot_volume_vpus_per_gb = "10"
    kms_key_id = var.kms_key_ocid
    source_id   = var.baseline_image
    source_type = "image"
  }
}