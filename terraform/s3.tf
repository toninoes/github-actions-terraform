resource "aws_s3_bucket" "this" {
  bucket = "mi-bucket-prueba-toninoes"

  tags = {
    Name        = "Mi bucket"
    Environment = "Dev"
  }
}