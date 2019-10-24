terraform {
  backend "s3" {
    bucket = "pgr301bucket"
    key    = "devops.exam.pgr301./terraform.tfstate"
    region = "eu-north-1"
    skip_region_validation = "true"
  }
}

provider "statuscake" {
  version = "1.0.0"
  username = "devopsexampgr301gmailcom"
}