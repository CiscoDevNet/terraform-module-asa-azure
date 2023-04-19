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

variable "create_rg" {
  type        = bool
  default     = true
  description = "Wheather to create Resource Group"
}

variable "rg_name" {
  type        = string
  default     = "cisco-ASAv-RG"
  description = "Azure Resource Group"
}

variable "create_vn" {
  type        = bool
  default     = true
  description = "Wheather to create Virtual Network"
}

variable "vn_name" {
  type        = string
  default     = ""
  description = "Existing Virtual Network Name"
}

variable "vn_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Virtual Network CIDR"
}


variable "subnet_size" {
  type        = string
  default     = 24
  description = "Size of Subnets"
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
  type        = string
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

variable "subnets" {
  type        = list(any)
  default     = []
  description = "subnets for FTD interfaces"
}

variable "tags" {
  description = "tags to map with resources ."
  type        = map(any)
  default = {
    env = "dev"
  }
}
