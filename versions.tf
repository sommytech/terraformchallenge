
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = ">= 1.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.0"
    }
  }

  cloud {
    organization = "your-org"                # <-- change this
    workspaces {
      name = "devopsgurus-site-remote"       # <-- change this
    }
  }
}
