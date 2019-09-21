# aws_wildrydes_terraform
This creates the WildRydes Serverless Web Application with Terraform in AWS

The manual steps to build and deploy are available [here](https://aws.amazon.com/getting-started/projects/build-serverless-web-app-lambda-apigateway-s3-dynamodb-cognito/)  

### Introduction

The WildRydes application is from one of the AWS getting started projects. 

After not finding any good Terraform wildrydes examples at the time i decided to write my own. Ironically after i finished my project i found [here](https://github.com/nagarkarv/wildrydes_terraform) but i believe mines better as theres no manual steps involved.


The following AWS services are used:
- AWS Lambda
- Amazon API Gateway
- Amazon S3
- Amazon Dynamodb
- Amazon Cognito
- Amazon IAM

The application gets deployed in `ap-southeast-2` region by default.

### High Level Overwiew
This code does the following:
- Create a S3 bucket, Cognito User Pool, IAM Role, Lambda function, API Gateway & DynamoDB
- Write the cognito user pool id, cognito user pool client id, region name & api gateway invoke_url to ./upload/config.js then upload to the S3 bucket

The website url will be listed in the terraform apply

### System Requirements
The following is required:
- Powershell 4.0+
- Windows 10

This is because the code leverages a Powershell script to inject values into the config.js file. 

### Known Issues
Powershell script are not re-evaluated after their initial run. If you encounter issues you will need to remove them from your state then apply or simply run a full destroy/apply.

### Usage
#### Step 1 - Credentials
You will need to update value **shared_credentials_file** in main.tf with your credential file location

#### Step 2 - Terraform First Run
Change the current directory to `aws_wildrydes_terraform` and execute the following  
```
$ terraform init
$ terraform plan
$ terraform apply
```

```
Apply complete! Resources: 113 added, 0 changed, 0 destroyed.

Outputs:

website = bucket328458265.s3-website-ap-southeast-2.amazonaws.com
```

### Cleanup Tasks
#### Destroy AWS Resources
```
terraform destroy
```