variable "name" {
  type    = string
}

variable "location" {
  type    = string
}

variable "managed_by" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = null
}
