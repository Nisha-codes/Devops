module "aisha-portfolio-bucket" {
  source               = "../tf-modules/azure-bucket-creation"
  portfolio_rg         = "rgroup-portfolio"
  location             = "UK South"
  storage_account_name = "aisha_bucket_on_thursday"
}

module "ayomide-portfolio-bucket" {
  source               = "../tf-modules/azure-bucket-creation"
  portfolio_rg         = "rgroup-portfolio"
  location             = "UK South"
  storage_account_name = "ayomide_bucket_on_thursday"
}