data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

terraform plan -input=false -refresh -no-color -out \"/home/atlantis/.atlantis/repos/Sarithm/terraform-coder/2/mgmt/terraform-coder-mgmt.tfplan\" -lock false" in "/home/atlantis/.atlantis/repos/Sarithm/terraform-coder/2/mgmt": exit status 1
