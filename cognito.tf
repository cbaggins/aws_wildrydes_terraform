#Create cognito userpool
resource "aws_cognito_user_pool" "pool" {
  name = "pool-${random_id.name.dec}"
  auto_verified_attributes = ["email"]
}

#create cognito userpool client
resource "aws_cognito_user_pool_client" "client" {
  name         = "client"
  user_pool_id = "${aws_cognito_user_pool.pool.id}"
}