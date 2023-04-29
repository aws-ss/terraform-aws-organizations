provider "aws" {
  region = "ap-northeast-2"
}

module "organizations" {
  source = "../..//"

  name  = ""
  email = ""
}