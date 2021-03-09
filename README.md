# StackHead: Cloudflare DNS module

StackHead module for Cloudflare DNS.

## Installation

Install it via `ansible-galaxy`:

```
ansible-galaxy install getstackhead.stackhead_dns_cloudflare
```

In order to use Cloudflare with [StackHead](https://get.stackhead.io), set `stackhead__dns` it in your inventory file:

```yaml
# inventory for integration test
---
all:
  vars:
    stackhead__dns:
      - getstackhead.stackhead_dns_cloudflare
  hosts:
    myserver:
      ansible_host: 123.456.789 # ...
      stackhead:
        applications:
          # ...
```


## Configuration

Make sure to provide the email and API token for Cloudflare via StackHead CLI configuration file:

```yaml
config:
  deployment:
    getstackhead.stackhead_dns_cloudflare:
      cloudflare_email: my@email.address
      cloudflare_api_token: MY-API-TOKEN
```

or Ansible inventory:

```yaml
stackhead__config_deployment:
  getstackhead.stackhead_dns_cloudflare:
    cloudflare_email: my@email.address
    cloudflare_api_token: MY-API-TOKEN
```

You'll also have to define the DNS provider to be used for each domain you want to set up in project definition:

```yaml
domains:
  - domain: mydomain.com
    dns:
      provider: cloudflare
```
