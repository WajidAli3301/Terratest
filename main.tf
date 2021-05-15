# Create a bucket
resource "aws_s3_bucket" "alsaaaaaaaabmnbmnbitest1-1990-1010213" {

  versioning {
    enabled = true
  }
  bucket = "testing3301-dash"
  tags = {     
    Name = "terratest-aws-s3-example-3301"     
    Environment = "Dev"   
  }

}

# Upload an object to aws
resource "aws_s3_bucket_object" "test1-creation" {

  bucket = aws_s3_bucket.alsaaaaaaaabmnbmnbitest1-1990-1010213.id

  key    = "test1.txt"
  content = "${timestamp()}"
}

resource "aws_s3_bucket_object" "test2-creation" {

  bucket = aws_s3_bucket.alsaaaaaaaabmnbmnbitest1-1990-1010213.id

  key    = "test2.txt"
  content = "${timestamp()}"
}
