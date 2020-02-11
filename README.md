#Load Image from Docker to ECR
Below steps for windows only

1) login to aws:
$ aws configure
AWS Access Key ID [****************WLH3]: AKIA4ONGBAZKX4HBJLNF
AWS Secret Access Key [****************UxEo]: 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
Default region name [us-east-1]:
Default output format [json]:

2) login to ecr:
$ aws ecr get-login --no-include-email
output:-
docker login -u AWS -p eyJwYXlsb2FkIjoiQXJVNSeHhGei81ZFgxY1l1YWtFRkYxSmFnUENUMUpmWUcz https://855583557205.dkr.ecr.us-east-1.amazonaws.com

3)docker login:
$ docker login -u AWS -p eyJwYXlsb2FkIjoiQXJVNSeHhGei81ZFgxY1l1YWtFRkYxSmFnUENUMUpmWUcz  855583
557205.dkr.ecr.us-east-1.amazonaws.com
output:-
WARNING! Using --password via the CLI is insecure. Use --password-stdin.
Login Succeeded

4)create repo:
$ aws ecr create-repository --pository-name centos
output:-
{
    "repository": {
        "repositoryArn": "arn:aws:ecr:us-east-1:855583557205:repository/poc",
        "registryId": "855583557205",
        "repositoryName": "poc",
        "repositoryUri": "855583557205.dkr.ecr.us-east-1.amazonaws.com/poc",
        "createdAt": 1581382672.0,
        "imageTagMutability": "MUTABLE",
        "imageScanningConfiguration": {
            "scanOnPush": false
        }
    }
}

5)tag image:
$ docker tag dcbf9557610e 855583557205.dkr.ecr.us-east-1.amazonaws.com/poc:0.0.1

6)push image:
$ docker push 855583557205.dkr.ecr.us-east-1.amazonaws.com/poc:0.0.1


# Create Infrastructure (ECS-Fargate) and Deploy ECR image using Terraform


1) Configure aws details in input.tfvars  as required input params

2) Init cmd: terraform init

3) Check configuration to execute and write a plan for target infrastructure cmd: terraform plan -var-file="input.tfvars"

4) Execute the plan cmd: terraform apply -var-file="input.tfvars"

5) Output: 
   alb_hostname = demo-graph-alb-713938452.us-east-1.elb.amazonaws.com

6) Test out application

7) List of AWS resources created ex:ELB,ECS Cluster etc

8) Teardown cmd : terraform destroy -var-file="input.tfvars"
   


