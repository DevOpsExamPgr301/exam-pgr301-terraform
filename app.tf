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

resource "heroku_config" "endpoints" {
  sensitive_vars = {
    LOGZ_IO_TOKEN = "${var.logz_io_token}"
  }
}
