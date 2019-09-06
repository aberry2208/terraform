variable "project" {
  default = "regal-scholar-235117"
}

variable "env" {
  default = "clgx"
}

variable "name" {
  default = "cl-dev-mta-test-1a"
}

variable "instance_type" {
  default = "f1-micro" // Update to correct instance type
}

variable "zone" {
  default = "us-central1-a"
}

variable "region" {
  default = "us-central1" // Can be changed to what ever region we are working with
}

variable "disk_image_project" {
  default = "centos-cloud" // Update to image factory location //
}

variable "disk_image_family" {
  default = "centos-7" // Update to correct image //
}

variable "environment" {
  default = "prd"
}

variable "designation" {
  default = "1"
}

variable "purpose"{
  default = "matrix-mail"
}

variable "number_of_relay" {
  default = "2"
}

variable "number_of_mta" {
  default = "2"
}

variable "organization" {
  default = "tac-systems"
}

variable "application" {
  default = "matrix"
}

variable "tier" {
  default = "app"
}

variable "chargeback_cost_center" {
  default = "123456789"
}

variable "case_wise_appid" {
  default = "123456789wert"
}

variable  "financial_owner" {
  default = "aberry"
}

variable "tech_lead" {
  default = "aberry"
}

variable "resolver_group" {
  default = "IT"
}

variable "primary_company_code" {
  default = "1234"
}

variable "primary_cost_center" {
  default = "1234"
}

variable "chargeback_company_code" {
  default = "7894556"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "disk_size" {
  default = "10"
}

variable "disk_type" {
  default = "pd-ssd"
}

variable "subnetwork" {
  default = "default"
}

variable "subnetwork_project" {
  default = "regal-scholar-235117"
}

variable "service_account" {
  default = ""
}

variable "service_account_scope" {
  default = ["https://www.googleapis.com/auth/cloud-platform"]
  type    = "list"
}

variable "tags" {
  default = []
  type    = "list"
}

variable "metadata" {
  type    = "map"
  default = {}
}

variable "additional_relay_disk_sizes" {
  type    = "list"
  default = ["10"]
}

variable "additional_mta_disk_sizes" {
  type    = "list"
  default = ["2", "10"]
}

