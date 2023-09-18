variable "server_type" {
  type        = string
  description = "Instance type"
  default     = "t3_nano"
}

variable "server_count" {
  type        = number
  description = "Instance count"
  default     = 1
}

variable "create_igw" {
  type        = bool
  description = "Create igw "
  default     = true
}