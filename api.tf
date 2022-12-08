module "lambda_function" {
  source                   = "./lambda_rest_api"
  
  local_dir_to_build       = ""
  docker_file_name         = ""
  aws_account_id           = ""
  aws_region               = "us-east-1"
  aws_profile              = "default"
  
  local_image_name         = "my_project_name"
  aws_function_name        = "my_project_name"
  aws_function_description = "some-description"
  api_stage                = "dev"
}

output "base_url" {
  value = module.lambda_function.base_url
}