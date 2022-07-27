variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "adam"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default = "eastasia"
}

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
}
