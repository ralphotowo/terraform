variable "GOOGLE_CREDENTIALS" {
  type = string
}

variable "name" {
  type = string
  default = "instance-1"
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
  default = "us-east1-c"
}

variable "user_name" {
  type = string
  default = "gcpdata"
}

variable "user_password" {
  type = string  
}

variable "project_id" {
  type = string
  default = "webapp-prod-341021"
}

variable "vpc_network" {
  type = string
  default = "default"
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
  default = false
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
        name = "VM"
        value = "34.148.27.69/32"
      },
      {
        name = "Ralph"
        value = "102.220.190.21/32"
      }
    ]
    ipv4_enabled        = false
    private_network     = "projects/webapp-prod-341021/global/networks/default"
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
    start_time                     = "01:00"
    location                       = null
    point_in_time_recovery_enabled = false
    transaction_log_retention_days = "0"
    retained_backups               = 7
    retention_unit                 = "COUNT"
  }
}
