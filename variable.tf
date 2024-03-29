variable "name" {
  default = "devops-exam-pgr301"
  description = "Base name for the Heroku app"
}

variable "buildpacks" {
  default = [ "heroku/gradle" ]
  description = "Array of heroku buildpacks"
}

variable "region" {
  description = "The region for Heroku deploy"
  default = "eu"
}

variable "logz_io_token" {
  description = "The access token to report to logz.io"
}

variable "database_url" {
  description = "The database connection string"
}