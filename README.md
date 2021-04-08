# terrformTemplate
Commands to run:
terraform init
terraform plan
terraform apply
terraform destroy

Creates a vpc, subnet, security group and ec2 instance within that created vpc in an aws cloud. 
Each of the resources have their configuration(.tf) files, variable and output files.
The main.tf file inside dev folder is where the module is created and one output of one module is given to the other module.
