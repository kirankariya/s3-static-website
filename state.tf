# S3 bucket for tfstate.
resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = "${var.tfstatebucket_name}"
  acl = "public-read"
  policy = templatefile("templates/tfstate-policy.json")
}

resource "aws_s3_bucket_object" "folder1" {
  bucket = "${aws_s3_bucket.tfstate_bucket.id}"
  acl    = "private"
  key    = "test/"
}