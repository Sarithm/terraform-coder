variable workspace_iam_roles {
    type = map
    default = {
        dev = "arn:aws:iam::807646851627:role/sarithm-mgmt-admin"
        stage = "arn:aws:iam::381558030617:role/sarithm-mgmt-admin"
        mgmt = "arn:aws:iam::701984500217:role/sarithm-mgmt-admin"
    }
}

provider "aws" {
    region = "us-west-2"
    assume_role {
        role_arn = var.workspace_iam_roles[terraform.workspace]
    }
}

terraform {
    required_version = ">= 0.13.5"

    backend "s3" {
        bucket = "samsontest"
        #profile = "mgmt"
        role_arn = "arn:aws:iam::701984500217:role/sarithm-mgmt-admin"
        key = "aws-infra/terraform-state/terraform.tfstate"
        region = "us-west-2"
        encrypt = true
        dynamodb_table = "terraform-state-lock"
    }
}
        
