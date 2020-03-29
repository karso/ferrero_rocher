data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    bucket = "terraform-funstuff-dev"
    region = "us-west-2"
    key = "networking/terraform.tfstate"
    dynamodb_table = "terraform-lock-dev"
    encrypt = true
  }
}
