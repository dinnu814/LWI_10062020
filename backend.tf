terraform {
    backend "s3" {
    bucket         = "terraform-dinnu814"
    key            = "terraform-Lab10062020.tfstate"
    region         = "us-east-1"
    encrypt        = true
    }
}