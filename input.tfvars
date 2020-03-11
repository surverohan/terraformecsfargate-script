AWS_ACCOUNT_ID=829858759460
AWS_REGION="us-east-1"
AWS_ACCESS_KEY="AKIA4CN3PYMSL6BJMS5G"
AWS_SECRET_KEY="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"
IMAGE_REPO_NAME="829858759460.dkr.ecr.us-east-1.amazonaws.com/poctest:0.0.2"
AWS_AZ_COUNT="2"
APP_DEPLOYMENT_PORT="8080"
APP_INSTANCE_COUNT="2"
FARGATE_CPU="256"
FARGATE_MEMORY="1024"
ECS_TASK_EXC_ROLE_NAME = "demoEcsTaskExecutionRole"
HEALTH_CHECK_PATH = "/"
APP_CONFIG="https://configdatatest.s3.amazonaws.com/app2.properties"
APP_PROFILE="testimmutablilty"
ENVIRONMENT_VARS = [
  {
    name  = "spring.config.location"
    value = "https://configdatatest.s3.amazonaws.com/app.properties"
  },
  {
    name  = "spring.profiles.sctive"
    value = "testimmutablilty"
  }
]
