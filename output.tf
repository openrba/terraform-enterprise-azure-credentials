output "provider_info" {
  description = "Azure provider information."
  value       = { subscription_id = var.connection_info.subscription_id
                  tenant_id       = var.connection_info.tenant_id
                  client_id       = data.vault_azure_access_credentials.creds.client_id
                  client_secret   = data.vault_azure_access_credentials.creds.client_secret }
}
