# terraform-alphaus-octo
Allow for Terraform access to Alphaus Cloud's OCTO product.

## Enrollment
This account currently has one module, that allows an AWS account to be enrolled into the OCTO cloud manager. This module can be configured as follows:

- *account_id (required):* The AWS account ID that should be enrolled.
- *alphaus_principal (required):* The Principal that is provided by Alphaus.
- *alphaus_external_id (required):* The external ID to associate with Alphaus. This should be of the following form: `MSP-{alpha}`.
- *alphaus_enable_ec2_management:* Whether or not to allow OCTO to create, start, stop and terminate EC2 instances. This parameter is required for RI management and other EC2 management features to function. This defaults to false.
- *alphaus_allow_self_policy_update:* Whether or not to allow OCTO to update its own role. Setting this to `true` incurs a certain security risk on the part of the client but allows for automated updates to OCTO's permissions, which can be useful from an ease-of-administration perspective. This value defaults to false.
