terraform {
  required_version = ">= 1.6.0"

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }

  cloud {
    organization = "Somitech-TerraformChallenge"
    workspaces {
      name = "devopsgurus-site"
    }
  }
}
