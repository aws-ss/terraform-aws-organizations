data "aws_iam_policy_document" "example" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

module "access_all_service" {
  source = "../../modules/policy//"

  content = data.aws_iam_policy_document.example.json
  name    = "AccessAllService"
}