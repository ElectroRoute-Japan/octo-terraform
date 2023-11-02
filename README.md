# terraform-alphaus-octo
Allow for Terraform access to Alphaus Cloud's OCTO product.

# Modules
This module current features two sub-modules: one for integration with OCTO and one for creating the necessary resources to allow for CUR reporting to OCTO. These have been separated to allow for the user to automatically enroll new accounts created through AFT or Control Tower into OCTO through global customizations. However, CUR reporting can only be done at the payer level so that needs to be done through an account customization or else through some other Terraform script.

## Integration
This module allows an AWS account to be enrolled into the OCTO cloud manager. This module can be configured as follows:

- **alphaus_principal (required):** The Principal that is provided by Alphaus.
- **external_id (required):** The external ID to associate with Alphaus. This should be of the following form: `MSP-{alpha}`.
- **cf_name (optional):** The name to assign to the CloudFormation template. This defaults to `AlphausAccountAccess`.

## Reporting
This module sets up the CUR report and S3 bucket to which said reports will be written as well as the role allowing OCTO to access them. This module can be configured as follows:

- **alphaus_principal (required):** The Principal that is provided by Alphaus.
- **bucket_name (required):** The name of the S3 bucket to which CUR reports should be written.
- **bucket_region (required):** The region the S3 bucket will be deployed to.\
- **bucket_option (required):** Whether to use an existing bucket (`USE_EXISTING`) or create a new one (`CREATE_NEW`). Only these values are accepted.
- **report_name (optional):** The name of the CUR report to write to S3, defaults to `octo_reports_hourly`.
- **report_prefix (optional):** The prefix in S3 to which CUR reports should be written, defaults to `hourly`.
- **management_roles (optional):** The roles that should be provided access to the reports bucket. Multiple values are allowed, defaults to `AlphausAcctAccessRole`.
- **cf_name (optional):** The name to assign to the CloudFormation template. This defaults to `AlphausS3Access`.
