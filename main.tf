resource "random_pet" "suffix" {
  length = 2
}

locals {
  computed_site_name = var.site_name != "" ? var.site_name : "devopsgurus-${random_pet.suffix.id}"
}
resource "netlify_site" "devopsgurus-netlify-hcp.netlify.app" {
  name     = local.computed_site_name
  team_name = var.team_name
}
