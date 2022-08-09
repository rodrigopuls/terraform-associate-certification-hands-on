# Speculative and Automatic Plan Mode
terraform plan
terraform apply -auto-approve

# Saved Plan
terraform plan -out="tfplan.out"
terraform apply tfplan.out