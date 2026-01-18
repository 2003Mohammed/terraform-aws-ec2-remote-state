terraform {
  backend "s3" {
    bucket         = "my-terraform-remote-state-bucket"
    key            = "basic-ec2/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
