variable "prefix" {
  type        = string
  description = "Prefix for resources names"
  default     = "example"
  validation {
    condition     = length(var.prefix) <= 16
    error_message = "The suffix can't be longer than 16 characters"
  }
}

variable "location" {
  type        = string
  description = "The location for all resources."
  default     = "East US"
}
