# terraform-alphaus-octo
Allow for Terraform access to Alphaus Cloud's OCTO product.

## Enrollment
This account currently has one module, that allows an AWS account to be enrolled into the OCTO cloud manager. This module can be configured as follows:

- **alphaus_principal (required):** The Principal that is provided by Alphaus.
- **alphaus_external_id (required):** The external ID to associate with Alphaus. This should be of the following form: `MSP-{alpha}`.
- **alphaus_cf_name (optional):** The name to assign to the CloudFormation template. This defaults to `AlphausAccountAccess`.
