terraform {
  #backend "s3" {
#    bucket         = "rivendell-terraform-state" # Use the appropriate bucket name for each project
#    key            = "path/to/my/terraform.tfstate"
#    region         = "us-east-1"
#    dynamodb_table = "rivendell-terraform-state-lock"
#    encrypt        = true
#  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ssm_parameter" "example_param" {
  name  = "/gollum/quote" 
  type  = "SecureString"
  value = "curse-the-baggins!"


  tags = {
    Environment = "Middle Earth"
}
}