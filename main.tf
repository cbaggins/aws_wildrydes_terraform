provider "aws" {
  region                  = "ap-southeast-2"
  shared_credentials_file = "./credentials"
  profile                 = "terraform"
}

#creates random value for storage group and cognito
resource "random_id" "name"	{
	byte_length = "4"
}

#needed to get current name of region for config.js
data "aws_region" "current" {}

#update /js/config.js with correct values
##Terraform has issues with escaping single quotes so its easier to use a script instead.
resource "null_resource" "configjsvalues" {
  depends_on    = ["aws_cognito_user_pool.pool","aws_cognito_user_pool_client.client","aws_api_gateway_deployment.gateway"]
  provisioner "local-exec" {
    command     = "./scripts/replaceconfigfilevalues.ps1 -userpoolid ${aws_cognito_user_pool.pool.id} -userpoolclientid ${aws_cognito_user_pool_client.client.id} -region ${data.aws_region.current.name} -apigateway ${aws_api_gateway_deployment.gateway.invoke_url}"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}

#Upload config.js to S3 bucket
resource "aws_s3_bucket_object" "configjs" {
	depends_on    = [null_resource.configjsvalues]
  bucket        = "${aws_s3_bucket.bucket.id}"
	key           = "js/config.js"
	source        = "./upload/config.js"
	content_type  = "application/javascript"
}

#Create Dynamo database
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Rides"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "RideId"

  attribute {
    name = "RideId"
    type = "S"
  }
}