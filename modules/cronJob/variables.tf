variable "env_name" {
  type        = string
  description = "Unique name of the environment"
}

variable "host" {
  type        = string
  description = "host for the cron to curl to"
}

variable "port" {
  type        = number
  description = "port for the cron to curl to"
}

variable "network_name" {
  type        = string
  description = "Name of the network to connect to"
}

variable "output_path" {
  type        = string
  description = "Local relative path to write the output file to"
}

variable "cron_schedule" {
  type        = string
  default     = "* * * * *"
  description = "Cron schedule for the output"
}
