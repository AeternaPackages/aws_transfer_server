# --- aws_transfer_server ---
output "transfer_servers_id" {
  description = "Map of id values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_id
}

output "transfer_servers_arn" {
  description = "Map of arn values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_arn
}

output "transfer_servers_certificate" {
  description = "Map of certificate values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_certificate
}

output "transfer_servers_directory_id" {
  description = "Map of directory_id values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_directory_id
}

output "transfer_servers_domain" {
  description = "Map of domain values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_domain
}

output "transfer_servers_endpoint" {
  description = "Map of endpoint values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_endpoint
}

output "transfer_servers_endpoint_details" {
  description = "Map of endpoint_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_endpoint_details
}

output "transfer_servers_endpoint_type" {
  description = "Map of endpoint_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_endpoint_type
}

output "transfer_servers_force_destroy" {
  description = "Map of force_destroy values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_force_destroy
}

output "transfer_servers_function" {
  description = "Map of function values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_function
}

output "transfer_servers_host_key" {
  description = "Map of host_key values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_host_key
  sensitive   = true
}

output "transfer_servers_host_key_fingerprint" {
  description = "Map of host_key_fingerprint values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_host_key_fingerprint
}

output "transfer_servers_identity_provider_type" {
  description = "Map of identity_provider_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_identity_provider_type
}

output "transfer_servers_invocation_role" {
  description = "Map of invocation_role values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_invocation_role
}

output "transfer_servers_ip_address_type" {
  description = "Map of ip_address_type values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_ip_address_type
}

output "transfer_servers_logging_role" {
  description = "Map of logging_role values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_logging_role
}

output "transfer_servers_post_authentication_login_banner" {
  description = "Map of post_authentication_login_banner values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_post_authentication_login_banner
  sensitive   = true
}

output "transfer_servers_pre_authentication_login_banner" {
  description = "Map of pre_authentication_login_banner values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_pre_authentication_login_banner
  sensitive   = true
}

output "transfer_servers_protocol_details" {
  description = "Map of protocol_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_protocol_details
}

output "transfer_servers_protocols" {
  description = "Map of protocols values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_protocols
}

output "transfer_servers_region" {
  description = "Map of region values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_region
}

output "transfer_servers_s3_storage_options" {
  description = "Map of s3_storage_options values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_s3_storage_options
}

output "transfer_servers_security_policy_name" {
  description = "Map of security_policy_name values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_security_policy_name
}

output "transfer_servers_sftp_authentication_methods" {
  description = "Map of sftp_authentication_methods values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_sftp_authentication_methods
}

output "transfer_servers_structured_log_destinations" {
  description = "Map of structured_log_destinations values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_structured_log_destinations
}

output "transfer_servers_tags" {
  description = "Map of tags values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_tags
}

output "transfer_servers_tags_all" {
  description = "Map of tags_all values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_tags_all
}

output "transfer_servers_url" {
  description = "Map of url values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_url
}

output "transfer_servers_workflow_details" {
  description = "Map of workflow_details values across all transfer_servers, keyed the same as var.transfer_servers"
  value       = module.transfer_servers.transfer_servers_workflow_details
}

# --- aws_transfer_access ---
output "transfer_accesses_id" {
  description = "Map of id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_id
}

output "transfer_accesses_external_id" {
  description = "Map of external_id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_external_id
}

output "transfer_accesses_home_directory" {
  description = "Map of home_directory values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_home_directory
}

output "transfer_accesses_home_directory_mappings" {
  description = "Map of home_directory_mappings values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_home_directory_mappings
}

output "transfer_accesses_home_directory_type" {
  description = "Map of home_directory_type values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_home_directory_type
}

output "transfer_accesses_policy" {
  description = "Map of policy values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_policy
}

output "transfer_accesses_posix_profile" {
  description = "Map of posix_profile values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_posix_profile
}

output "transfer_accesses_region" {
  description = "Map of region values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_region
}

output "transfer_accesses_role" {
  description = "Map of role values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_role
}

output "transfer_accesses_server_id" {
  description = "Map of server_id values across all transfer_accesses, keyed the same as var.transfer_accesses"
  value       = module.transfer_accesses.transfer_accesses_server_id
}

# --- aws_transfer_agreement ---
output "transfer_agreements_id" {
  description = "Map of id values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_id
}

output "transfer_agreements_access_role" {
  description = "Map of access_role values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_access_role
}

output "transfer_agreements_agreement_id" {
  description = "Map of agreement_id values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_agreement_id
}

output "transfer_agreements_arn" {
  description = "Map of arn values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_arn
}

output "transfer_agreements_base_directory" {
  description = "Map of base_directory values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_base_directory
}

output "transfer_agreements_description" {
  description = "Map of description values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_description
}

output "transfer_agreements_local_profile_id" {
  description = "Map of local_profile_id values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_local_profile_id
}

output "transfer_agreements_partner_profile_id" {
  description = "Map of partner_profile_id values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_partner_profile_id
}

output "transfer_agreements_region" {
  description = "Map of region values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_region
}

output "transfer_agreements_server_id" {
  description = "Map of server_id values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_server_id
}

output "transfer_agreements_status" {
  description = "Map of status values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_status
}

output "transfer_agreements_tags" {
  description = "Map of tags values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_tags
}

output "transfer_agreements_tags_all" {
  description = "Map of tags_all values across all transfer_agreements, keyed the same as var.transfer_agreements"
  value       = module.transfer_agreements.transfer_agreements_tags_all
}

# --- aws_transfer_host_key ---
output "transfer_host_keys_arn" {
  description = "Map of arn values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_arn
}

output "transfer_host_keys_description" {
  description = "Map of description values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_description
}

output "transfer_host_keys_host_key_body" {
  description = "Map of host_key_body values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_host_key_body
  sensitive   = true
}

output "transfer_host_keys_host_key_body_wo" {
  description = "Map of host_key_body_wo values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_host_key_body_wo
  sensitive   = true
}

output "transfer_host_keys_host_key_fingerprint" {
  description = "Map of host_key_fingerprint values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_host_key_fingerprint
}

output "transfer_host_keys_host_key_id" {
  description = "Map of host_key_id values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_host_key_id
}

output "transfer_host_keys_region" {
  description = "Map of region values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_region
}

output "transfer_host_keys_server_id" {
  description = "Map of server_id values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_server_id
}

output "transfer_host_keys_tags" {
  description = "Map of tags values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_tags
}

output "transfer_host_keys_tags_all" {
  description = "Map of tags_all values across all transfer_host_keys, keyed the same as var.transfer_host_keys"
  value       = module.transfer_host_keys.transfer_host_keys_tags_all
}

# --- aws_transfer_ssh_key ---
output "transfer_ssh_keys_id" {
  description = "Map of id values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_id
}

output "transfer_ssh_keys_body" {
  description = "Map of body values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_body
}

output "transfer_ssh_keys_region" {
  description = "Map of region values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_region
}

output "transfer_ssh_keys_server_id" {
  description = "Map of server_id values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_server_id
}

output "transfer_ssh_keys_ssh_key_id" {
  description = "Map of ssh_key_id values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_ssh_key_id
}

output "transfer_ssh_keys_user_name" {
  description = "Map of user_name values across all transfer_ssh_keys, keyed the same as var.transfer_ssh_keys"
  value       = module.transfer_ssh_keys.transfer_ssh_keys_user_name
}

# --- aws_transfer_user ---
output "transfer_users_id" {
  description = "Map of id values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_id
}

output "transfer_users_arn" {
  description = "Map of arn values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_arn
}

output "transfer_users_home_directory" {
  description = "Map of home_directory values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_home_directory
}

output "transfer_users_home_directory_mappings" {
  description = "Map of home_directory_mappings values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_home_directory_mappings
}

output "transfer_users_home_directory_type" {
  description = "Map of home_directory_type values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_home_directory_type
}

output "transfer_users_policy" {
  description = "Map of policy values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_policy
}

output "transfer_users_posix_profile" {
  description = "Map of posix_profile values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_posix_profile
}

output "transfer_users_region" {
  description = "Map of region values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_region
}

output "transfer_users_role" {
  description = "Map of role values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_role
}

output "transfer_users_server_id" {
  description = "Map of server_id values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_server_id
}

output "transfer_users_tags" {
  description = "Map of tags values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_tags
}

output "transfer_users_tags_all" {
  description = "Map of tags_all values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_tags_all
}

output "transfer_users_user_name" {
  description = "Map of user_name values across all transfer_users, keyed the same as var.transfer_users"
  value       = module.transfer_users.transfer_users_user_name
}


