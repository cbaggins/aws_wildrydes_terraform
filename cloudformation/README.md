# aws_wildrydes_cloudformation
This creates the WildRydes Serverless Web Application using Cloudformation in AWS.

Note: Cloudformation doesnt let you upload files from a local machine to S3 (aside for lambda uses) so you will need to do that yourself. I've helped by outputting the appropriate values.

### High Level Overwiew
This code does the following:
- Create a S3 bucket, Cognito User Pool, IAM Role, Lambda function, API Gateway & DynamoDB
- Enables X-ray tracing for Lambda

You will need to:
- Modify the ../upload/config.js with the values from the cloudformation output
- Upload the files from ../upload to the CF created bucket
- Enjoy