locals {
  transfer_servers = { for k1, v1 in var.transfer_servers : k1 => { certificate = v1.certificate, directory_id = v1.directory_id, domain = v1.domain, endpoint_details = v1.endpoint_details, endpoint_type = v1.endpoint_type, force_destroy = v1.force_destroy, function = v1.function, host_key = v1.host_key, identity_provider_type = v1.identity_provider_type, invocation_role = v1.invocation_role, ip_address_type = v1.ip_address_type, logging_role = v1.logging_role, post_authentication_login_banner = v1.post_authentication_login_banner, pre_authentication_login_banner = v1.pre_authentication_login_banner, protocol_details = v1.protocol_details, protocols = v1.protocols, region = v1.region, s3_storage_options = v1.s3_storage_options, security_policy_name = v1.security_policy_name, sftp_authentication_methods = v1.sftp_authentication_methods, structured_log_destinations = v1.structured_log_destinations, tags = v1.tags, tags_all = v1.tags_all, url = v1.url, workflow_details = v1.workflow_details } }

  transfer_accesses = merge([
    for k1, v1 in var.transfer_servers : {
      for k2, v2 in coalesce(v1.transfer_accesses, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.transfer_servers.transfer_servers_id["${k1}"]
      })
    }
  ]...)

  transfer_agreements = merge([
    for k1, v1 in var.transfer_servers : {
      for k2, v2 in coalesce(v1.transfer_agreements, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.transfer_servers.transfer_servers_id["${k1}"]
      })
    }
  ]...)

  transfer_host_keys = merge([
    for k1, v1 in var.transfer_servers : {
      for k2, v2 in coalesce(v1.transfer_host_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.transfer_servers.transfer_servers_id["${k1}"]
      })
    }
  ]...)

  transfer_ssh_keys = merge([
    for k1, v1 in var.transfer_servers : {
      for k2, v2 in coalesce(v1.transfer_ssh_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.transfer_servers.transfer_servers_id["${k1}"]
      })
    }
  ]...)

  transfer_users = merge([
    for k1, v1 in var.transfer_servers : {
      for k2, v2 in coalesce(v1.transfer_users, {}) :
      "${k1}/${k2}" => merge(v2, {
        server_id = module.transfer_servers.transfer_servers_id["${k1}"]
      })
    }
  ]...)
}

module "transfer_servers" {
  source           = "git::https://github.com/AeternaModules/aws_transfer_server.git?ref=v6.58.0"
  transfer_servers = local.transfer_servers
}

module "transfer_accesses" {
  source            = "git::https://github.com/AeternaModules/aws_transfer_access.git?ref=v6.58.0"
  transfer_accesses = local.transfer_accesses
  depends_on        = [module.transfer_servers]
}

module "transfer_agreements" {
  source              = "git::https://github.com/AeternaModules/aws_transfer_agreement.git?ref=v6.58.0"
  transfer_agreements = local.transfer_agreements
  depends_on          = [module.transfer_servers]
}

module "transfer_host_keys" {
  source             = "git::https://github.com/AeternaModules/aws_transfer_host_key.git?ref=v6.58.0"
  transfer_host_keys = local.transfer_host_keys
  depends_on         = [module.transfer_servers]
}

module "transfer_ssh_keys" {
  source            = "git::https://github.com/AeternaModules/aws_transfer_ssh_key.git?ref=v6.58.0"
  transfer_ssh_keys = local.transfer_ssh_keys
  depends_on        = [module.transfer_servers]
}

module "transfer_users" {
  source         = "git::https://github.com/AeternaModules/aws_transfer_user.git?ref=v6.58.0"
  transfer_users = local.transfer_users
  depends_on     = [module.transfer_servers]
}

