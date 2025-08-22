output "site_name" {
  value = netlify_site.this.name
}

output "site_url" {
  value = "https://${netlify_site.this.name}.netlify.app"
}
