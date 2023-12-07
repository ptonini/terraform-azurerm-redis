variable "name" {}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags do grupo de recursos"
}

variable "family" {
  type        = string
  default     = "C"
  description = "familia do redis"
}

variable "sku_name" {
  type        = string
  default     = "Standard"
  description = "tipo do  redis"
}

variable "enable_non_ssl_port" {
  type        = bool
  default     = true
  description = "utiliza ou não porta ssl"
}


variable "capacity" {
  type        = number
  default     = 2
  description = "capacity do plano"
}

variable "minimum_tls_version" {
  default = "1.2"
}

variable "patch_schedule" {
  type = object({
    day_of_week    = string
    start_hour_utc = number
  })
  default = {
    day_of_week    = "Sunday"
    start_hour_utc = 5
  }
}

