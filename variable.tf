/***********************************************
  Variable Confiugruation File
***********************************************/
variable "project" {
  default = "regal-scholar-235117"
}

variable "region" {
  default = "us-east1"
}

variable "number_of_relay" {
  default = "3"
}

variable "number_of_mta" {
  default = "3"
}

variable "tags" {
  default = []
  type    = "list"
}

variable "primary_company_code" {
  default = "2870"
}

variable "chargeback_cost_center" {
  default = "2870"
}

variable "primary_cost_center" {
  default = "758371"
}

variable "case_wise_appid" {
  default = "16f9a24583b111e390b390b5005056850489"
}

variable "financial_owner" {
  default = "aberry"
}

variable "tech_lead" {
  default = "aberry"
}

variable "resolver_group" {
  default = "aberry"
}

variable "tier" {
  default = "app"
}

variable "purpose" {
  default = "matrix-mail"
}

variable "application" {
  default = "matrix"
}

variable "organization" {
  default = "tac"
}

variable "labels" {
  default = "maps"
}
variable "disk_type" {
  default = "pd-ssd"
}

variable "disk_type" {
  default = "pd-ssd"
}

variable "additional_relay_disk_sizes" {
  type    = "list"
  default = ["2","50"]
}

variable "additional_mta_disk_sizes" {
  type    = "list"
  default = ["2","50"]
}

variable "company" {
  default = "TAC"
}

variable "env" {
  default = "dev"
}

