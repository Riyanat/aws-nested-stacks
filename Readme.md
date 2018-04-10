### AWS NESTED STACKS

#### Pre-requisites
1. terraform
2. ~/.aws/credentials file with default profile

#### To Test this out
1. Create a bucket in s3
2. In [sns-topics.template](cfn/sns-topics.template) replace `<<<INSERT_BUCKET_NAME>>` with the bucket name
3. Run `terraform init`
4. Run `terraform apply`

#### Note
If the templates already exist in s3, terraform will not upload the files again even if there are changes in the file! 
a way to get past this is to run  `terraform destroy `  before running `terraform apply`. this will delete all the resources created in the terraform config. 