# Integration
This module allows an AWS account to be enrolled into the OCTO cloud manager. This module can be configured as follows:

- **alphaus_principal (required):** The Principal that is provided by Alphaus.
- **external_id (required):** The external ID to associate with Alphaus. This should be of the following form: `MSP-{alpha}`.
- **cf_name (optional):** The name to assign to the CloudFormation template. This defaults to `AlphausAccountAccess`.
