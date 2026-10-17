# Organization

This example manages an AWS Organization with organizational units, member accounts, a delegated administrator, a service control policy and a resource control policy.

> **_NOTE:_** The list of `aws_service_access_principals` in this example is for reference only. Enabling trusted access allows the service to perform operations in all accounts of your organization, so keep only the services you need. See [AWS services that you can use with AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html) for the full list.
>
> AWS recommends enabling trusted access from each service's console when available. See [Using AWS Organizations with other AWS services](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html).

> **_NOTE:_** `iam_user_access_to_billing` and `role_name` cannot be read from the Organizations API, so changes to them after the account is created are ignored. With `close_on_deletion = false`, `terraform destroy` only removes the account from the organization. See [Removing a member account from your organization](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html).

> **_NOTE:_** Trusted access for the service must be enabled (`aws_service_access_principals`) before registering a delegated administrator. Services with their own delegated administrator API (e.g. GuardDuty, Security Hub, Macie, Inspector) should be configured with the service-specific resource instead. See [AWS services that you can use with AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html).

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```
