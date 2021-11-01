provider "aws" {
  profile = var.profile
  region  ="us-east-1"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20 #free tier
  storage_type         = "gp2" #general purpose SSD
  engine               = "postgres"
  engine_version       = "12.8"
  instance_class       = "db.t2.micro"
  name                 = "contacts_db"
  username             = "postgres"
  password             = var.password
  identifier           = var.id
  vpc_security_group_ids = ["sg-0b5441c2b43454068"]
  publicly_accessible = true
  skip_final_snapshot = true
}
