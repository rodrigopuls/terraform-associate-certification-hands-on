# Input Variables:

1 - TF_VAR_<FIELD>
2 - terraform.tfvars
3 - vars.tfvars
4 - vars.auto.tfvars
5 - -var="field=value"  OR -var-file="var.tfvars"



# Input Variable Definition Precedence:

Terraform loads variables in the following order, with later sources taking precedence over earlier ones:

1 - Environment variables
2 - The terraform.tfvars file, if present.
3 - The terraform.tfvars.json file, if present.
4 - Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
5 - Any -var and -var-file options on the command line, in the order they are provided. (This includes variables set by a Terraform Cloud workspace.)



# Output Variables:

- terraform output <FIELD> -json -raw

- terraform output -json | jq