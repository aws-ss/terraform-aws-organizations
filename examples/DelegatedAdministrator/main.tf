provider "aws" {
  region = "ap-northeast-2"
}


module "delegated_administrator" {
  source = "../../modules/delegated_administrator//"

  account_id        = ""
  service_principal = "cloudtrail.amazonaws.com"
}