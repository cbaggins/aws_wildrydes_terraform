#First rename and zip the requestunicorn.js file for lambda
resource "null_resource" "renamelambdajsfile" {
  depends_on    = ["null_resource.unzip"]
  provisioner "local-exec" {
    command     = "Rename-Item -Path './upload/aws-serverless-workshops-master/WebApplication/3_ServerlessBackend/requestunicorn.js' -NewName 'index.js' -Force"
    interpreter = ["Powershell", "-command"]
    working_dir = "./"
  }
}

data "archive_file" "archive" {
  depends_on    = ["null_resource.renamelambdajsfile"]
  type          = "zip"
  source_file   = "./upload/aws-serverless-workshops-master/WebApplication/3_ServerlessBackend/index.js"
  output_path   = "./upload/index.zip"
}

resource "aws_lambda_function" "lambda" {
  depends_on    = ["data.archive_file.archive"]
  function_name = "RequestUnicorn"
  runtime       = "nodejs8.10"
  role          = "${aws_iam_role.role.arn}"
  filename      = "./upload/index.zip"
  handler       = "index.handler"
}
