# Partial for acme_certificate Terraform module
  dns_challenge {
    provider = "cloudflare"
    config = {
      CF_DNS_API_TOKEN: "{{ module.config.cloudflare_api_token }}"
    }
  }
