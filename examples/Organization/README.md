# Organization

This example creates an AWS Organization with all features enabled, enables trusted access for AWS services and enables Service Control Policies (SCPs) in the organization root.

> **_NOTE:_** The list of `aws_service_access_principals` in this example is for reference only. Enabling trusted access allows the service to perform operations in all accounts of your organization, so keep only the services you need. See [AWS services that you can use with AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html) for the full list.
>
> AWS recommends enabling trusted access from each service's console when available. See [Using AWS Organizations with other AWS services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html).

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```
