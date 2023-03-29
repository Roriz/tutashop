# Tutashop
This repo will keep the code used in the workshop focused on devs, where we will configure and deploy a Rails application in a production environment.

## Prerequisites
- Go to the Trainning AWS Console: https://revelo-root.awsapps.com/start/#/

## Full experience
We will have a moment where you will upload a rails application with your changes, for that you need to have:
- git installed (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- docker installed (https://docs.docker.com/get-docker/)
- AWS CLI installed (https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

For who don't have docker and/or aws-cli installed, we will have a docker image ready to run the workshop.

## Agenda
1. [Intro](#introdução)
2. [Deploy of a task](/docs/1.deploy-task.md)
3. [Deploy of a task with another version](/docs/1.deploy-task.md)
4. [Deploy of a service](/docs/2.deploy-service.md)
5. Creating a load balance
6. [Deploy of a service with load balance](/docs/2.deploy-service.md)
7. What is missing for a production environment?
8. Freestyle && Autoscale

## Intro
- We will create the infra, but we will not give maintenance (we will delete everything at the end)
- We will not use a CI/CD tool, we will do everything manually
- We will do some blue/green deploys
- We will have logs, but not scalable
- We will focus on the backend with http service

## What is missing for a production environment? 
 - AutoScaling
 - segurança network, A.K. Security Group, VPC
 - segurança acessos, A.K. IAM
 - segurança secrets, A.K. KMS
 - monitoring (Agent, CloudWatch, etc)
 - backup
 - Multi-AZ
