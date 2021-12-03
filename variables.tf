variable "name" {
  type        = string
  default     = null
  description = "Name of the team"
}

variable "organization" {
  type        = string
  default     = null
  description = "Name of the organization"
}
variable "visibility" {
  type        = string
  default     = "secret"
  description = "The visibility of the team"
}

variable "team_id" {
  type        = string
  default     = null
  description = "ID of the team"
}

variable "organization_membership_id" {
  type        = list(string)
  default     = []
  description = "ID of the organization membership"
}

variable "force_regenerate" {
  type        = bool
  default     = false
  description = "If set to true, a new token will be generated even if a token already exists"
}
