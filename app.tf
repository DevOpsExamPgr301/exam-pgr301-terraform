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

resource "heroku_app_config_association" "staging" {
  app_id = "${heroku_app.staging.id}"

  sensitive_vars = {
    LOGZ_IO_TOKEN = "${var.logz_io_token}"
  }
}

resource "heroku_app_config_association" "production" {
  app_id = "${heroku_app.production.id}"

  sensitive_vars = {
    LOGZ_IO_TOKEN = "${var.logz_io_token}"
  }
}
