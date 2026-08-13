variable "transfer_servers" {
  description = <<EOT
Map of transfer_servers, attributes below
Optional:
    - certificate
    - directory_id
    - domain
    - endpoint_type
    - force_destroy
    - function
    - host_key
    - identity_provider_type
    - invocation_role
    - ip_address_type
    - logging_role
    - post_authentication_login_banner
    - pre_authentication_login_banner
    - protocols
    - region
    - security_policy_name
    - sftp_authentication_methods
    - structured_log_destinations
    - tags
    - tags_all
    - url
    - endpoint_details (block)
    - protocol_details (block)
    - s3_storage_options (block)
    - workflow_details (block)
Nested transfer_accesses (aws_transfer_access):
    Required:
        - external_id
    Optional:
        - home_directory
        - home_directory_type
        - policy
        - region
        - role
        - home_directory_mappings (block)
        - posix_profile (block)
Nested transfer_agreements (aws_transfer_agreement):
    Required:
        - access_role
        - base_directory
        - local_profile_id
        - partner_profile_id
    Optional:
        - description
        - region
        - tags
        - tags_all
Nested transfer_host_keys (aws_transfer_host_key):
    Optional:
        - description
        - host_key_body
        - host_key_body_wo
        - region
        - tags
Nested transfer_ssh_keys (aws_transfer_ssh_key):
    Required:
        - body
        - user_name
    Optional:
        - region
Nested transfer_users (aws_transfer_user):
    Required:
        - role
        - user_name
    Optional:
        - home_directory
        - home_directory_type
        - policy
        - region
        - tags
        - tags_all
        - home_directory_mappings (block)
        - posix_profile (block)
EOT

  type = map(object({
    certificate                      = optional(string)
    tags                             = optional(map(string))
    structured_log_destinations      = optional(set(string))
    sftp_authentication_methods      = optional(string)
    security_policy_name             = optional(string)
    region                           = optional(string)
    protocols                        = optional(set(string))
    pre_authentication_login_banner  = optional(string)
    post_authentication_login_banner = optional(string)
    tags_all                         = optional(map(string))
    logging_role                     = optional(string)
    invocation_role                  = optional(string)
    identity_provider_type           = optional(string)
    host_key                         = optional(string)
    function                         = optional(string)
    force_destroy                    = optional(bool)
    endpoint_type                    = optional(string)
    domain                           = optional(string)
    directory_id                     = optional(string)
    ip_address_type                  = optional(string)
    url                              = optional(string)
    endpoint_details = optional(object({
      address_allocation_ids = optional(set(string))
      security_group_ids     = optional(set(string))
      subnet_ids             = optional(set(string))
      vpc_endpoint_id        = optional(string)
      vpc_id                 = optional(string)
    }))
    protocol_details = optional(object({
      as2_transports              = optional(set(string))
      passive_ip                  = optional(string)
      set_stat_option             = optional(string)
      tls_session_resumption_mode = optional(string)
    }))
    s3_storage_options = optional(object({
      directory_listing_optimization = optional(string)
    }))
    workflow_details = optional(object({
      on_partial_upload = optional(object({
        execution_role = string
        workflow_id    = string
      }))
      on_upload = optional(object({
        execution_role = string
        workflow_id    = string
      }))
    }))
    transfer_accesses = optional(map(object({
      external_id         = string
      home_directory      = optional(string)
      home_directory_type = optional(string)
      policy              = optional(string)
      region              = optional(string)
      role                = optional(string)
      home_directory_mappings = optional(list(object({
        entry  = string
        target = string
      })))
      posix_profile = optional(object({
        gid            = number
        secondary_gids = optional(set(number))
        uid            = number
      }))
    })))
    transfer_agreements = optional(map(object({
      access_role        = string
      base_directory     = string
      local_profile_id   = string
      partner_profile_id = string
      description        = optional(string)
      region             = optional(string)
      tags               = optional(map(string))
      tags_all           = optional(map(string))
    })))
    transfer_host_keys = optional(map(object({
      description      = optional(string)
      host_key_body    = optional(string)
      host_key_body_wo = optional(string)
      region           = optional(string)
      tags             = optional(map(string))
    })))
    transfer_ssh_keys = optional(map(object({
      body      = string
      user_name = string
      region    = optional(string)
    })))
    transfer_users = optional(map(object({
      role                = string
      user_name           = string
      home_directory      = optional(string)
      home_directory_type = optional(string)
      policy              = optional(string)
      region              = optional(string)
      tags                = optional(map(string))
      tags_all            = optional(map(string))
      home_directory_mappings = optional(list(object({
        entry  = string
        target = string
      })))
      posix_profile = optional(object({
        gid            = number
        secondary_gids = optional(set(number))
        uid            = number
      }))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.transfer_servers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.transfer_servers : [for kk in keys(coalesce(v0.transfer_accesses, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.transfer_servers : [for kk in keys(coalesce(v0.transfer_agreements, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.transfer_servers : [for kk in keys(coalesce(v0.transfer_host_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.transfer_servers : [for kk in keys(coalesce(v0.transfer_ssh_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.transfer_servers : [for kk in keys(coalesce(v0.transfer_users, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
