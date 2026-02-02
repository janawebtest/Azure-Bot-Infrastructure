
variable "vnet_name" {
  type        = string
  default     = "vnet-demo"
  description = "Virtual Network name"
}

variable "subnet_name" {
  type        = string
  default     = "subnet-demo"
  description = "Subnet name"
}

variable "public_ip_name" {
  type        = string
  default     = "public-ip-demo"
  description = "Public IP name"
}
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
