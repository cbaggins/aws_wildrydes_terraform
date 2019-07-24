resource "aws_s3_bucket" "bucket" {
  bucket        = "bucket-${random_id.name.dec}"
  acl           = "private"
  force_destroy = true #Forcably delete the bucket & contents if i run terraform destroy

   website {
    index_document = "index.html"
   }
}

#create policy
resource "aws_s3_bucket_policy" "policy" {
  bucket = "${aws_s3_bucket.bucket.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Effect": "Allow", 
      "Principal": "*", 
      "Action": "s3:GetObject", 
      "Resource": "${aws_s3_bucket.bucket.arn}/*" 
    }
  ]
}
POLICY
}