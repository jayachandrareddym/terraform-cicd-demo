terraform {
  required_version = ">= 1.5.6"

  backend "s3" {
    bucket         = "jaydemy-tfstate-458108203924"   
    key            = "terraform-cicd-demo.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}
