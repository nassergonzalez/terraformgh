terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "~> 5.0"
         }
    }
}
# Configure the GitHub Provider
provider "github" {
 token = var.token # add your github token here.
}
resource "github_repository" "tofucreatedrepo" {
 name = "demo_repo" 
 description = "This is a repo created using open tofu"
 visibility = "public"
}