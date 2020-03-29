terraform {
  source = "../../../modules//ecs-fargate//"
}

remote_state {
  backend = "s3"
  config = {
    bucket = "terraform-funstuff-dev"
    region = "us-west-2"
    key = "ecs-fargate/terraform.tfstate"
    dynamodb_table = "terraform-lock-dev"
    encrypt = true
  }
}
