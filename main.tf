resource "aws_security_group" "demo_sg" {
  name        = "demo-open-sg"
  description = "Insecure SG to be deleted after demo "

  ingress {
    description = "demo sg"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["223.181.108.36/32"]  
  }
}

resource "aws_security_group" "tf_cicd_demo_sg" {
  name        = "hug-demo-sg"
  description = "creatig test sg for terraform ci/cd demo at hug meetup "

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  
  }
}
