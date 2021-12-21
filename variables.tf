variable "name" {
  type        = string
  description = "Name of the team"
}

variable "organization" {
  type        = string
  description = "Name of the organization"
}

variable "organization_membership_id" {
  type        = list(string)
  description = "ID of the organization membership"
}

variable "force_regenerate" {
  type        = bool
  default     = false
  description = "If set to true, a new token will be generated even if a token already exists"
}
