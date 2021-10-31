provider "aws" {
  profile = var.profile
  region  ="us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20 #free tier
  storage_type         = "gp2" #general purpose SSD
  engine               = "postgres"
  instance_class       = "db.t2.micro"
  name                 = "contacts_db"
  username             = "postgres"
  password             = var.password
  identifier           = var.id
  # vpc_security_group_ids = ["sg-01fe8787a458e9e3f"]
  publicly_accessible = true
}