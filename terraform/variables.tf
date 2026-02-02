variable "rg_name" {
  type        = string
  default     = "rg-demo-auto"
  description = "description"
}

variable "location" {
  type        = string
  default     = "southindia"
  description = "description"
}


variable "vm_name" {
  type        = string
  default     = "ccautovm"
  description = "description"
}


variable "vm_size" {
  type        = string
  default     = "Standard_B2s"
  description = "description"
}
