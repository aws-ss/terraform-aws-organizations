provider "aws" {
  region = "ap-northeast-2"
}

module "organizations" {
  source = "../../modules/account//"

  name  = ""
  email = ""
}