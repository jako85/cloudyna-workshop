include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

terraform {
  source = "../..//terraform/storage_account"
}

inputs = {
  workload = "state"
  environment = "dev"
  location = "euw"
}