# terraform-linode-migadu

Terraform module for easy DNS configuration required by [Migadu](https://www.migadu.com) Mail Service.

## Usage

**Using Terraform Registry**
```
module "example-com-mail-records" {
  source            = "andresmazzo/migadu/linode"
  domain_id         = "01234"
  domain            = "example.com"
  verification_code = "56789"
}
```


**Using Github**
```
module "example-com-mail-records" {
  source            = "github.com/andresmazzo/terraform-linode-migadu"
  domain_id         = "01234"
  domain            = "example.com"
  verification_code = "56789"
}
```