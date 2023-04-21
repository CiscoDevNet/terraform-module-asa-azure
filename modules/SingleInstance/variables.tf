variable "location" {
  type    = string
  default = "westeurope"
}
variable "prefix" {
  type    = string
  default = "cisco-asav"
}

variable "source-address" {
  type    = string
  default = "*"
}
variable "IPAddressPrefix" {
  type    = string
  default = "10.10"
}
variable "Version" {
  type    = string
  default = "915.1.1"
}
variable "VMSize" {
  type    = string
  default = "Standard_D3_v2"
}
variable "RGName" {
  type    = string
  default = "cisco-asav-RG"
}
variable "instancename" {
  type    = string
  default = "cisco-asav"
}
variable "instanceusername" {
  type    = string
  default = "cisco"
}
variable "instancepassword" {
  type    = string
  default = "Pa$$w0rd1234"
}
variable "day-0-config" {
  type    = string
  default = "ASA_Running_Config.txt"
}

variable "tags" {
  description = "tags to map with resources ."
  type        = map(any)
  default = {
    env = "dev"
  }
}
