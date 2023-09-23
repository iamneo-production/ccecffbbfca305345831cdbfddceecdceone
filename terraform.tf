terraform {
    required_provider{

        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = ""
    access_key = "AKIASGOFNFJTTGODR34Z"
    secret_key = "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"
}
resource "aws_instance" "EC2_instance" {
    ami = ""
    instance_type = "t2.micro"
}
output "public_ip" {
    value = aws_instance.EC2_instance.public_ip
}