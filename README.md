# devops04-immutable-infra
## My Second DevOps Environment Build : GCP, AWS, Terraform, GitHub CLI, Minikube, Kubernetes, Kubectl, RDS

This time I use Terraform to quickly plan, deploy & destroy my simple infrastructure using command line

## Environment & Technologies used in this project
* GCP (Cloud Provider 1): Ubuntu instance as my work desktop machine running Minikube
* This GitHub repository as my terraform files container - I push, pull & merge it using git & gh cli from my Ubuntu instance on GCP
* Terraform for my Infrastructure as Code
* AWS (Cloud Provider 2): Postgres database in RDS automatically deployed by Terraform
* Containerized Basic REST API app running on a Kubernetes pod inside Minikube cluster and connecting to RDS Postgres database on AWS
