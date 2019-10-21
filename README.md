## Usage 
```hcl-terraform
module "SOME_IDENTIFIER" {
  source = "github.com/DevOpsExamPgr301/exam-pgr301-terraform"
  name = "test-app" # YOUR APP NAME
  buildpacks = [    # YOUR BUILDPACKS 
    "heroku/java"
  ]
}
```