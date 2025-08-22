resource "random_pet" "suffix" {
  length = 2
}

locals {
  computed_site_name = var.site_name != "" ? var.site_name : "devopsgurus-${random_pet.suffix.id}"
}

# Just define the site via the Netlify provider
resource "netlify_site" "this" {
  name     = local.computed_site_name
  team_slug = var.team_slug
}

# (Simplest way: manually upload your HTML after site is created)
