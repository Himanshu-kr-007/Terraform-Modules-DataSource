module "EC2-Module" {
  source           = "../Modules/EC2"
  Env-InstanceType = "t2.micro"
  OS-Tag           = "Team-Dev OS"
}

output "Team-Dev" {
  value = "Team Dev is Start working"
}

# Importing Output From Modules -> EC2
output "Team-Dev_EC2_Module_Output_Import" {
  value = module.EC2-Module.EC2-Module_Output
}

output "Team-Dev_PublicIP" {
  value = module.EC2-Module.Default-Public_IP
}

output "Team-Dev_AMIID" {
  value = module.EC2-Module.AMI-ID
}