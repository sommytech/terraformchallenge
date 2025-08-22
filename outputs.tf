
output "site_name" {
  value       = netlify_site.this.name
  description = "The Netlify site name"
}

output "site_url" {
  value       = "https://${netlify_site.this.name}.netlify.app"
  description = "The live Netlify site URL"
}
