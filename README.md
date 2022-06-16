
# MultiportECSWithTerraformModule

## Usage

Check valid versions on:
* Github Releases: <https://github.com/anilchalissery/terraform-aws-MultiportEcsFargateService/releases>
* Terraform Module Registry: <https://registry.terraform.io/modules/anilchalissery/MultiportEcsFargateService/aws/latest>

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4 |


## Example
/
```
module "example-prod-backend-service" {
  source                 = "anilchalissery/MultiportEcsFargateService/aws"
  environment            = "example-prod"
  name                   = "backend"
  role                   = "arn:aws:iam::222222222222:role/ecsTaskExecutionRole"
  target_group_name1     = "backend"
  target_group_name2     = "socket"
  vpc_id                 = "vpc-02add95bdaaeb59c4"
  aws_subnet_1           = "subnet-002669c9299adbe87"
  aws_subnet_2           = "subnet-0576c382d03ea4ab3"
  ecs_security_group     = "sg-0a17caef5984fa606"
  cluster_name           = "clustername"
  container_port1        = 3000
  container_port2        = 3001
  http_listener_arn      = "arn:aws:elasticloadbalancing:us-east-1:222222222222:listener/app/webapp/b79f9b6af059c4e1/91cbb2f32af3271f"
  https_listener_arn     = "arn:aws:elasticloadbalancing:us-east-1:222222222222:listener/app/webapp/b79f9b6af059c4e1/72731108fe76a7f3"
  host1                  = "backend.prod.example.com"
  host2                  = "socket.prod.example.com"
}
```




## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="environment"></a> [environment](#input\_environment) |  "example-prod" usually that's how I name resources. example could be our project name and in this module, we name things as environment+name so if our project name is example then we provide name variable as backend then the resources will be named as example-prod-backend | string | yes |
| <a name="name"></a> [name](#input\name) | Name stands for API name of service or use of service. sometimes there is more than one backend. So it's good to have a meaningful name for AWS resources. | string | yes |
| <a name="role"></a> [role](#input\role) | ARN of ecsTaskExecutionRole https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html | string | yes |
| <a name="target_group_name1"></a> [target_group_name1](#input\target_group_name1) | This name will be given as the target group name. | string | yes |
| <a name="target_group_name2"></a> [target_group_name2](#input\target_group_name2) | This name will be given as the target group name. | string | yes |
| <a name="vpc_id"></a> [vpc_id](#input\vpc_id) | ID of the VPC | any | yes |
| <a name="aws_subnet_1"></a> [aws_subnet_1](#input\aws_subnet_1) | The private subnets associated with the task or service. | string | yes |
| <a name="aws_subnet_2"></a> [aws_subnet_2](#input\aws_subnet_2) | The private subnets associated with the task or service. | string | yes |
| <a name="ecs_security_group"></a> [ecs_security_group](#input\ecs_security_group) | The security groups associated with the task or service. | string | yes |
| <a name="health_check_path"></a> [health_check_path](#input\health_check_path) | (Optional) default is "/" | string | no |
| <a name="health_check_code"></a> [health_check_code](#input\health_check_code) | (Optional) default is 200  | string | no |
| <a name="cluster_name"></a> [cluster_name](#input\cluster_name) | Name of ECS cluster | String | yes |
| <a name="service_desired_count"></a> [service_desired_count](#input\service_desired_count) | (Optional) Desired number of tasks  | number | no |
| <a name="container_port1"></a> [container_port1](#input\container_port1) | Container port  that we are exposing | number | yes |
| <a name="container_port2"></a> [container_port2](#input\container_port2) | Container port that we are exposing | number | yes |
| <a name="http_listener_arn"></a> [http_listener_arn](#input\http_listener_arn) | ARN of HTTP listener of ALB | any | yes |
| <a name="https_listener_arn"></a> [https_listener_arn](#input\vphttps_listener_arnc_id) | ARN of HTTPS listener of ALB | any | yes |
| <a name="host1"></a> [host1](#input\host1) | Host header for ALB rules that points to container port 1 | any | yes |
| <a name="host2"></a> [host2](#input\vpc_host2id) | Host header for ALB rules that points to container port 2 | any | yes |
| <a name="retention_days"></a> [retention_days](#input\retention_days) | (Optional) retention period of logs, Default is set to 14 | number | no |





