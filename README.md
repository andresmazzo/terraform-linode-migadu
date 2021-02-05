# terraform-linode-migadu-records

Terraform module for easy config DNS Configurations required by [Migadu](https://www.migadu.com) Mail Service.

## Usage

```
module "example-com-mail-records" {
  source            = "github.com/andresmazzo/terraform-linode-migadu-records"
  domain_id         = "01234"
  domain            = "example.com"
  verification_code = "56789"
}
```