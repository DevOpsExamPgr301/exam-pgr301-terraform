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

provider "opsgenie" {
  api_url = "api.eu.opsgenie.com"
}

resource "opsgenie_user" "admin" {
  username = "c6555881@urhen.com"
  full_name = "Foo Bar"
  role = "owner"
}

resource "opsgenie_team" "production" {
  name = "DevopsPgr301 team"
  member {
    id = "${opsgenie_user.admin.id}"
  }
}

resource "opsgenie_schedule" "production" {
  name        = "Schedule-DevopsTeam"
  description = "schedule production"
  timezone    = "Europe/Rome"
  enabled     = false
  owner_team_id = "${opsgenie_team.production.id}"
}
