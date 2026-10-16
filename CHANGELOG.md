# Changelog

All notable changes to this project will be documented in this file.

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
