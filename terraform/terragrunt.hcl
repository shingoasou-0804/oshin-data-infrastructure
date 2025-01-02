generate "backend" {
  path = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}
EOF
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_version = "1.9.5"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.97.0"
    }
  }
}

provider "snowflake" {
  alias = "accountadmin"
  role  = "ACCOUNTADMIN"
}
EOF
}
