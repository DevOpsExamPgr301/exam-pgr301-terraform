resource "heroku_app" "test" {
  name = "${var.name}-test"
  region = "${var.region}"
  buildpacks = "${var.buildpacks}"
}

resource "heroku_app" "staging" {
  name = "${var.name}-staging"
  region = "${var.region}"
  buildpacks = "${var.buildpacks}"
}

resource "heroku_app" "production" {
  name = "${var.name}-production"
  region = "${var.region}"
  buildpacks = "${var.buildpacks}"
}
