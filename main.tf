resource "random_id" "id" {
  byte_length = 4
}

resource "aws_s3_bucket" "demo" {
  bucket = "hashicorp-ug-demo-${random_id.id.hex}"
}
