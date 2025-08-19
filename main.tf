resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname
}

resource "aws_s3_bucket_ownership_controls" "mybucketownership" {
  bucket = aws_s3_bucket.mybucket.id
  
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "mybucketpublicaccess" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "mybucketacl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.mybucketownership,
    aws_s3_bucket_public_access_block.mybucketpublicaccess,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}