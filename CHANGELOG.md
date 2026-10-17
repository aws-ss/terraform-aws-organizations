# Changelog

All notable changes to this project will be documented in this file.

## [3.4.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v3.3.0...v3.4.0) (2026-10-17)


### Features

* **policy_attachment:** Add output and validations ([3d14a19](https://github.com/aws-ss/terraform-aws-organizations/commit/3d14a19bb241cf510fbd463b4bfec470c5cc4441))
* **policy:** Rename outputs and add validations ([784b9bc](https://github.com/aws-ss/terraform-aws-organizations/commit/784b9bc0c427ac665d5b1dd36136113de7e6dfa6))
* Support to manage a resource policy in Organizations ([498bc9e](https://github.com/aws-ss/terraform-aws-organizations/commit/498bc9e02fd5e1051f112d9ab384d05f1c609ca0))

## [3.3.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v3.2.0...v3.3.0) (2026-10-17)


### Features

* Rename delegated_administrator module outputs and add validation ([bf36d42](https://github.com/aws-ss/terraform-aws-organizations/commit/bf36d426d9b38998f8ce1ad9080006e857748621))

## [3.2.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v3.1.0...v3.2.0) (2026-10-17)


### Features

* Rename organizational_unit module outputs and add validations ([bd69c4d](https://github.com/aws-ss/terraform-aws-organizations/commit/bd69c4ddad79cd19effcec09360fe2402bae12fe))

## [3.1.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v3.0.0...v3.1.0) (2026-10-17)


### Features

* Rename account module outputs and add lifecycle rules ([bfdc1da](https://github.com/aws-ss/terraform-aws-organizations/commit/bfdc1da521db2e32ffaa42ce67147640ccfbac9d))

## [3.0.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v2.2.0...v3.0.0) (2026-10-16)


### ⚠ BREAKING CHANGES

* Requires Terraform >= 1.5.0 and AWS provider >= 6.0.0.
aws_service_access_principals now defaults to [], so trusted access for
previously default services is disabled unless passed explicitly.
Outputs are renamed from aws_organizations_organization_* to organization_*.

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>

### Features

* Support AWS provider v6 ([32b76d6](https://github.com/aws-ss/terraform-aws-organizations/commit/32b76d66e5c27a8c910b569729ed8a45f76074f8))

## [2.2.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v2.1.0...v2.2.0) (2023-05-06)


### Features

* Support to manage an AWS Organizations policy ([23e80a5](https://github.com/aws-ss/terraform-aws-organizations/commit/23e80a56f3fda3033136db7a9e0bd2b9433caca6))

## [2.1.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v2.0.0...v2.1.0) (2023-04-30)


### Features

* Support to create an organizational unit ([094e9d9](https://github.com/aws-ss/terraform-aws-organizations/commit/094e9d90ad336f09e256836049c9bee3191e9cf7))

## [2.0.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v1.1.0...v2.0.0) (2023-04-29)


### ⚠ BREAKING CHANGES

* Add module, and restructuring directory

### Features

* Add module, and restructuring directory ([10653d2](https://github.com/aws-ss/terraform-aws-organizations/commit/10653d27591bc8bd4af0592707c969af95189920))

## [1.1.0](https://github.com/aws-ss/terraform-aws-organizations/compare/v1.0.0...v1.1.0) (2023-04-29)


### Features

* Support to manage delegated administrator ([cf80883](https://github.com/aws-ss/terraform-aws-organizations/commit/cf808835eeb2ab2fba24cc12dbaac00e97125ac2))

## 1.0.0 (2023-04-29)


### Features

* Support to create a member account in organization ([89a0f14](https://github.com/aws-ss/terraform-aws-organizations/commit/89a0f14c885bbe3da1a05efc7beb9b06ea2b1196))
