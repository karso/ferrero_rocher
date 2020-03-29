module "ecs-fargate" {
    source              = "cn-terraform/ecs-fargate/aws"
    version             = "2.0.8"
    name_preffix        = var.name_preffix
    profile             = var.profile
    region              = var.region
    vpc_id              = data.terraform_remote_state.networking.outputs.vpc_id
    availability_zones  = var.azs
    public_subnets_ids  = data.terraform_remote_state.networking.outputs.public_subnets
    private_subnets_ids = data.terraform_remote_state.networking.outputs.private_subnets
    container_name               = "${var.name_preffix}-nginx"
    container_image              = "nginx"
    container_cpu                = 1024
    container_memory             = 8192
    container_memory_reservation = 2048
    essential                    = true
    container_port               = 9000
    environment = [
        {
            name  = "NGINX_PORT"
            value = 8080
        }
    ]
}
