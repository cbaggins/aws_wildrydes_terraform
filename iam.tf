resource "aws_iam_role" "role" {
  name                  = "WildRydesLambda"
  description           = "WildRydes Lambda Role"
  force_detach_policies = true
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

#Grant Cloudwatch perms
resource "aws_iam_role_policy_attachment" "lambdaroleattach" {
  role        = "${aws_iam_role.role.name}"
  policy_arn  = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_role_policy" "dynamodb" {
  name = "DynamoDBWriteAccess"
  role = "${aws_iam_role.role.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "dynamodb:PutItem*"
      ],
      "Effect": "Allow",
      "Resource": "${aws_dynamodb_table.basic-dynamodb-table.arn}"
    }
  ]
}
EOF
}