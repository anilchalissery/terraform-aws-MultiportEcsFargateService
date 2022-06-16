variable "environment" {
	type = string
	default = ""
}
variable "name"{
        type = string
}
variable "role"{
        type = any
}
variable "target_group_name1"{
        type = string
}
variable "target_group_name2"{
        type = string
}
variable "target_group_protocol1"{
        type = string
	default  = "HTTP"
}
variable "target_group_protocol2"{
        type = string
	default = "HTTP"
}
variable "vpc_id"{
        type = any
}
variable "health_check_path"{
	type = string
	default = "/"
}
variable "health_check_code"{        
        default = "200"

}
variable "cluster_name"{
        type = string
}
variable "aws_subnet_1" {
        type = any
}
variable "aws_subnet_2" {
        type = any
}
variable "ecs_security_group" {
        type = any
}
variable "service_desired_count"{
	type = number
	default = "0"
}
variable "container_port1"{
        type = number
}
variable "container_port2"{
        type = number
}
variable "host1"{
        type = any
}
variable "host2"{
        type = any
}
variable "http_listener_arn"{
        type = any
}
variable "https_listener_arn"{
        type = any
}
variable "retention_days"{
        type = number
        default = "14"
}
