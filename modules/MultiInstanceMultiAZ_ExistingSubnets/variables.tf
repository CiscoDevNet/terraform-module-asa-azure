#####################################################################################################################
# Variables
#####################################################################################################################

variable "location" {
  type        = string
  default     = "eastus2"
  description = "Azure region"
}

variable "prefix" {
  type        = string
  default     = "cisco-ASAv"
  description = "Prefix to prepend resource names"
}

variable "rg_name" {
  type        = string
  description = "Azure Resource Group Name"
  default     = "Cisco-ASAv-RG"
}

variable "vn_name" {
  type        = string
  description = "Existing Virtual Network Name"
  default     = "Cisco-ASAv-Vnet"
}

variable "source_address" {
  type        = string
  default     = "*"
  description = "Limit the Management access to specific source"
}

variable "azs" {
  type = list(any)
  default = [
    "1",
    "2",
    "3"
  ]
  description = "Azure Availability Zones"
}

variable "instances" {
  type        = number
  default     = 2
  description = "Number of ASAv instances"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D3_v2"
  description = "Size of the VM for ASAv"
}

variable "instancename" {
  type        = string
  default     = "ASAv"
  description = "ASAv instance Name"
}

variable "username" {
  type        = string
  default     = "cisco"
  description = "Username for the VM OS"
}

variable "password" {
  type        = string
  default     = "P@$$w0rd1234"
  description = "Password for the VM OS"
  sensitive   = true
}

variable "image_version" {
  type        = string
  default     = "917.0.3"
  description = "Version of the ASAv"
}

variable "management_subnet" {
  type        = string
  description = "Management newtwork subnet"
  default     = "mgmt"
}

variable "external_subnet" {
  type        = string
  description = "diagnostic newtwork subnet"
  default     = "external"
}

variable "internal_subnet" {
  type        = string
  description = "Outside newtwork subnet"
  default     = "internal"
}

variable "tags" {
  description = "tags to map with resources ."
  type        = map(any)
  default = {
    env = "dev"
  }
}
