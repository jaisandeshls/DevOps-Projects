terraform{

    backend "s3" {

        bucket = "terraform-state-files-98676"
        key = "state-files/terraform.tfstate"
        region = "us-east-1"

    }
}
