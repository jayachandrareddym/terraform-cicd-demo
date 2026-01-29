#resource "random_id" "id" {
#  byte_length = 4
#}
#
#resource "aws_s3_bucket" "demo" {
#  bucket = "hashicorp-ug-demo-${random_id.id.hex}"
#}

########### SG   #########

resource "aws_security_group" "demo_sg" {
  name        = "demo-open-sg"
  description = "Insecure SG to be deleted after demo "

  ingress {
    description = "allowed from my ip"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["223.181.108.36/32"]  
  }
}
