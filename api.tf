/*
CORS configuration example is at https://medium.com/@MrPonath/terraform-and-aws-api-gateway-a137ee48a8ac
*/

resource "aws_api_gateway_rest_api" "api" {
  name        = "WildRydes"
  
  endpoint_configuration {
    types  = ["EDGE"]
  }
}

resource "aws_api_gateway_authorizer" "authorizer" {
  name          = "WildRydes"
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  type          = "COGNITO_USER_POOLS"
  provider_arns = ["${aws_cognito_user_pool.pool.arn}"]
}

resource "aws_api_gateway_resource" "resource" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  path_part   = "ride"
}

resource "aws_api_gateway_method" "method" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "POST"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = "${aws_api_gateway_authorizer.authorizer.id}"
}

resource "aws_api_gateway_integration" "integration" {
  rest_api_id             = "${aws_api_gateway_rest_api.api.id}"
  resource_id             = "${aws_api_gateway_resource.resource.id}"
  http_method             = "${aws_api_gateway_method.method.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda.arn}/invocations"
}

#Following is config needed for CORS
resource "aws_api_gateway_method" "corsmethod" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "corsintegration" {
  rest_api_id  = "${aws_api_gateway_rest_api.api.id}"
  resource_id  = "${aws_api_gateway_resource.resource.id}"
  http_method  = "${aws_api_gateway_method.corsmethod.http_method}"
  type         = "MOCK"

#add the following otherwise CORS wont load
  request_templates = { 
    "application/json" = "{ \"statusCode\": 200   }" 
  }
}

resource "aws_api_gateway_method_response" "cors_gateway_method_response" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "${aws_api_gateway_method.corsmethod.http_method}"
  status_code   = "200"
  response_models = {
    "application/json" = "Empty"
  }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }
}

resource "aws_api_gateway_integration_response" "cors_integration_response" {
  depends_on    = ["aws_api_gateway_method_response.cors_gateway_method_response"]
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "${aws_api_gateway_method.corsmethod.http_method}"
  status_code   = "${aws_api_gateway_method_response.cors_gateway_method_response.status_code}"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'OPTIONS'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }
}

#lambda to grant access to API
resource "aws_lambda_permission" "lambda_permission" {
  depends_on    = ["aws_lambda_function.lambda"]
  statement_id  = "AllowWildrydesAPIInvoke"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda.function_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.api.execution_arn}/*/POST/ride"
}

#lastly deploy the API gateway
resource "aws_api_gateway_deployment" "gateway" {
  depends_on  = ["aws_api_gateway_integration.integration"]
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  stage_name  = "prod"
}