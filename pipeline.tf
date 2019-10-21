resource "heroku_pipeline" "deploy" {
  name = "${var.name}-pipeline-deploy"
}

resource "heroku_pipeline_coupling" "staging" {
  app = "${heroku_app.staging.name}"
  pipeline = "${heroku_pipeline.deploy.id}"
  stage = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.deploy.id}"
  stage = "production"
}
