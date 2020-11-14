# Generate temporary azure credentials
data "vault_azure_access_credentials" "creds" {
  backend                     = var.connection_info.vault_backend
  role                        = var.connection_info.vault_role
  validate_creds              = var.validate_creds
  num_sequential_successes    = var.num_sequential_successes
  num_seconds_between_tests   = var.num_seconds_between_tests
  max_cred_validation_seconds = var.max_cred_validation_seconds
}
