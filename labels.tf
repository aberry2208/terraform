
module "labels" {
  source = "git::https://github.com/corelogic/terraform-null-label?ref=v3.0.0"

  # CoreLogic
  primary_company_code    = var.primary_company_code
  primary_cost_center     = var.primary_cost_center
  chargeback_company_code = var.chargeback_company_code
  chargeback_cost_center  = var.chargeback_cost_center
  case_wise_appid         = var.case_wise_appid
  environment             = var.environment
  financial_owner         = var.financial_owner
  tech_lead               = var.tech_lead
  resolver_group          = var.resolver_group
  tier                    = var.tier
  application             = var.application
  organization            = var.organization
  purpose                 = var.purpose
  }
