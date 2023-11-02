# terraform-alphaus-octo
Allow for Terraform access to Alphaus Cloud's OCTO product.

# Base Usage
Importing this module as-is will create a role to allow OCTO to access the account and then setup CUR report delivery. For more granular control, see the nested modules. The top-level module has the following parameters:

- **alphaus_principal (required):** The Principal (AWS account ID) that is provided by Alphaus.
- **external_id (required):** The external ID to associate with Alphaus. This should be of the following form: `MSP-{alpha}`.
- **bucket_name (required):** The name of the S3 bucket to which CUR reports should be written.
- **bucket_region (required):** The region the S3 bucket will be deployed to.

# Nested Modules
This module current features two sub-modules: one for integration with OCTO and one for creating the necessary resources to allow for CUR reporting to OCTO. These have been separated to allow for the user to automatically enroll new accounts created through AFT or Control Tower into OCTO through global customizations. However, CUR reporting can only be done at the payer level so that needs to be done through an account customization or else through some other Terraform script.
