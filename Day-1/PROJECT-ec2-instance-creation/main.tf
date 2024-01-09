provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-06aa3f7caf3a30282"  # Specify an appropriate AMI ID
    subnet_id = "subnet-0c8d0d14e44a4838f" #have to define subnet id and Key pair name to create instance with a specific subnet and key pair
    key_name = "sgpu"
    instance_type = "t2.micro"
}