variable "AWS_REGION" {
  type = string
}

variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "AWS_ACCOUNT_ID" {
  type = string
}

variable "IMAGE_REPO_NAME" {
  type = string
}


variable "AWS_AZ_COUNT" {
  type = string
  
}
variable "APP_DEPLOYMENT_PORT" {
  type = string
}

variable "APP_INSTANCE_COUNT" {
  type = string
}

variable "FARGATE_CPU" {
  type = string
}

variable "FARGATE_MEMORY" {
  type = string
}

variable "ECS_TASK_EXC_ROLE_NAME" {
  type = string

}

variable "HEALTH_CHECK_PATH" {
    type = string

}


variable "APP_PROFILE" {
  type = string
}


variable "APP_CONFIG" {
  type = string
  
}
variable "ENVIRONMENT_VARS" {
  type = list(object({
    name  = string
    value = string
  }))
  description = "The environment variables to pass to the container. This is a list of maps"
  default     = null
}
