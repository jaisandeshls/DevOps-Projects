provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "terraform-state" {

    #give bucket name unique
    bucket = "terraform-statefiles-4341"
    
    versioning_configuration {
    status = "Enabled"

    }
  
}

terraform{

    backend "s3" {

        bucket = "terraform-statefiles-4341"
        key = "state-files/tfstate"
        region = "us-east-1"

    }
}