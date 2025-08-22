
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

locals {
  effective_site_name = var.site_name != "" ? var.site_name : "devopsgurus-${random_string.suffix.result}"
}

provider "netlify" {}

resource "netlify_site" "this" {
  name = local.effective_site_name
}

resource "netlify_deploy" "static" {
  site_id = netlify_site.this.id
  dir     = "${path.module}/site"
}
