
# MultiportECSWithTerraformModule



#sample env/prod/main.tf 
/
```
module "example-prod-backend-service" {
  source                 = "anilchalissery/MultiportEcsFargateService/aws"
  environment            = "example-prod"
  accountid              = "222222222222" 
  region                 = "us-east-1"
  name                   = "backend"
  role                   = "arn:aws:iam::222222222222:role/ecsTaskExecutionRole"
  target_group_name1     = "backend"
  target_group_protocol1 = "HTTP"
  target_group_name2     = "socket"
  target_group_protocol2 = "HTTP"
  vpc_id                 = "vpc-02add95bdaaeb59c4"
  aws_subnet_1           = "subnet-002669c9299adbe87"
  aws_subnet_2           = "subnet-0576c382d03ea4ab3"
  ecs_security_group     = "sg-0a17caef5984fa606"
  health_check_path      = "/"
  health_check_code      = 200
  cluster_name           = "clustername"
  service_desired_count  = 0
  container_port1        = 3000
  container_port2        = 3001
  http_listener_arn      = "arn:aws:elasticloadbalancing:us-east-1:222222222222:listener/app/webapp/b79f9b6af059c4e1/91cbb2f32af3271f"
  https_listener_arn     = "arn:aws:elasticloadbalancing:us-east-1:222222222222:listener/app/webapp/b79f9b6af059c4e1/72731108fe76a7f3"
  host1                  = "backend.prod.example.com"
  host2                  = "socket.prod.example.com"
  retention_days         = "14"
}
```


These are the required variables to be passed. As these are the commonly changed values I included only limited variables.
* source : Its the path and folder where the child module resides. If you change the name of the folder do keep in mind to edit this.
* environment : "example-prod" usually that's how I name resources. example could be our project name and in this module, we name things as environment+name so if our project name is example-prod then we provide name variable as backend then the resources will be named as example-prod-backend
* name : Name stands for API name of service or use of service. sometimes there is more than one backend. So it's good to have a meaningful name for AWS resources.
* accountid : This variable is passed to ECR repo URL 
* region : This variable is passed to ECR repo URL
* role : This should be the ARN of ecsTaskExecutionRole
* target_group_name1 & target_group_name2 : These names will be given as the target group names. 
* vpc_id : This is the VPC id 
* aws_subnet_1 & aws_subnet_2 : AWS will ask for two subnets while creating an ECS service. Private subnets are provided here. 
* ecs_security_group : Security group id of ECS cluster. AWS will ask for one security group while creating ECS service. we could use the same security group for multiple services in the same cluster.
* health_check_path : Usually the default is / 
* health_check_code : The default success code is 200 we could also override with 200–499
* cluster_name : The ECS Fargate cluster name 
* service_desired_count : desired count is set one to start running. while creating the service youcould set this as 0. 
* container_port1 & container_port2 : Container ports that we are exposing
* http_listener_arn : ARN of HTTP listener of ALB
* https_listener_arn : ARN of HTTPS listener of ALB
* host1 & host2 : These are the host headers for ALB rules
* retention_days : Logs in Cloudwatch will expire after this specified number of days.





