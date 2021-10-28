variable "connection_info" {
  description = "Connection information for Hashicorp Vault backend."
  type        = object({ subscription_id = string
                         tenant_id       = string
                         vault_backend   = string
                         vault_role      = string
                         vault_token     = string })
  sensitive   = true
}

variable "validate_creds" {
  description = "Whether generated credentials should be validated to have fully propagated throughout Azure Active Directory."
  type        = bool
  default     = true
}

variable "num_sequential_successes" {
  description = "The number of sequential successes required to validate generated credentials."
  type        = number
  default     = 8
}

variable "num_seconds_between_tests" {
  description = "The number of seconds to wait between each test of generated credentials."
  type        = number
  default     = 7
}

variable "max_cred_validation_seconds" {
  description = "The number of seconds after which to give up validating credentials."
  type        = number
  default     = 1200
}
