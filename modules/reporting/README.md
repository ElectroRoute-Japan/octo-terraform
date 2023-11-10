# Reporting
This module sets up the CUR report and S3 bucket to which said reports will be written as well as the role allowing OCTO to access them. This module can be configured as follows:

- **alphaus_principal (required):** The Principal that is provided by Alphaus.
- **bucket_name (required):** The name of the S3 bucket to which CUR reports should be written.
- **bucket_region (required):** The region the S3 bucket will be deployed to.
- **bucket_option (required):** Whether to use an existing bucket (`USE_EXISTING`) or create a new one (`CREATE_NEW`). Only these values are accepted.
- **report_name (optional):** The name of the CUR report to write to S3, defaults to `octo_reports_hourly`.
- **report_prefix (optional):** The prefix in S3 to which CUR reports should be written, defaults to `hourly`.
- **cf_name (optional):** The name to assign to the CloudFormation template. This defaults to `AlphausS3Access`.
