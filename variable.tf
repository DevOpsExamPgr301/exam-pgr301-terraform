variable "name" {
  description = "Base name for the Heroku app"
}

variable "buildpacks" {
  description = "Array of heroku buildpacks"
}

variable "region" {
  description = "The region for Heroku deploy"
  default = "eu"
}