# store the terraform state file in s3
terraform {
  backend "s3" {
    bucket    = "projectt-terraform-remote-state"   #need to create a S3 bucket with this name 
    key       = "jupiter-website-ecs.tfstate"
    region    =  "us-east-1"
    profile   = "devops47"
  }
}