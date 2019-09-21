resource "aws_lambda_function" "lambda" {
  function_name = "RequestUnicorn"
  runtime       = "nodejs8.10"
  role          = "${aws_iam_role.role.arn}"
  filename      = "./upload/index.zip"
  handler       = "index.handler"
}