variable "GOOGLE_CREDENTIALS" {
  type = string
}

variable "name" {
  type = string
  default = "datascience-apps"
}

variable "tier" {
  type  = string
  default = "db-custom-2-13312"
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "zone" {
  type = string
  default = "us-east-1c"
}

variable "user_name" {
  type = string
  default = "gcp-user"
}

variable "user_password" {
  type = string  
}

variable "project_id" {
  type = string
  default = "webapp-prod-341021"
}

variable "activation_policy" {
  type = string
  default = "ALWAYS" 
}

variable "availability_type" {
  type = string
  default = "REGIONAL"
}

variable "database_version" {
  type = string
  default = "POSTGRES_11"
}

variable "deletion_protection" {
  type  = bool
  default = true
}

variable "disk_type" {
  type  = string
  default = "PD_SSD"
}

variable "disk_autoresize" {
  type  = bool
  default = true
}

variable "enable_default_user" {
  type = bool
  default = true
}

variable "ip_configuration" {
  type = object({
    authorized_networks = list(map(string))
    ipv4_enabled        = bool
    private_network     = string
    require_ssl         = bool
  })
  default = {
    authorized_networks = [
      {
        name = "ETL VM"
        value = "35.185.37.105"
      },
      {
        name = "Ralph"
        value = "102.220.190.21"
      }
    ]
    ipv4_enabled        = true
    private_network     = null
    require_ssl         = false
  }
}

variable "maintenance_window_day" {
  type = number
  default = 6
}

variable "maintenance_window_hour" {
  type = number
  default = 18
}

variable "backup_configuration" {
  type = object({
    enabled                        = bool
    start_time                     = string
    location                       = string
    point_in_time_recovery_enabled = bool
    transaction_log_retention_days = string
    retained_backups               = number
    retention_unit                 = string
  })
  default = {
    enabled                        = true
    start_time                     = null
    location                       = null
    point_in_time_recovery_enabled = false
    transaction_log_retention_days = null
    retained_backups               = null
    retention_unit                 = null
  }
}