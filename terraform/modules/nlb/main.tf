module "dcos-masters-lb" {
  source  = "terraform-dcos/lb/aws"
  version = "~> 0.2.0"

  cluster_name = var.environment

  subnet_ids = data.terraform_remote_state.networking.outputs.private_subnets
  load_balancer_type = "network"
  additional_listener = [{
    port = 8080
    protocol = "http"
  }]

  https_acm_cert_arn = "arn:aws:acm:us-east-1:123456789123:certificate/ooc4NeiF-1234-5678-9abc-vei5Eeniipo4"
}
