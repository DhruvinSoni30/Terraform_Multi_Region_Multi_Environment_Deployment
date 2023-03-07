# create EC2 instance in public subnet
resource "aws_instance" "demo_instance_public_1" {

  ami                    = var.ami_id
  vpc_security_group_ids = [var.public_ec2_security_group]
  instance_type          = var.instance_type
  availability_zone      = data.aws_availability_zones.az.names[0]
  subnet_id              = var.public_subnet_az1
  key_name               = var.key_id
  user_data              = file("/Users/dhruvins/Desktop/Terraform_Modules_Jenkins/modules/ec2/jenkins.sh")

  tags = {
    "Name" = "${var.project_name}-public-instance"
  }

}

# AZ
data "aws_availability_zones" "az" {}
