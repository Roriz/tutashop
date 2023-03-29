# Tutashop
Esse repo irá manter o código utilizado no workshop focado em devs, onde iremos configurar e subir uma aplicação Rails em um ambiente de produção.

## Preparação
- Entrem na sua conta AWS: https://revelo-root.awsapps.com/start/#/

## Full experience
Teremos um momento que vocês vão subir uma aplicação rails com as suas alterações, para isso vocês precisam ter:
- Git instalado e configurado (https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- Docker instalado e configurado (https://docs.docker.com/get-docker/)
- AWS CLI instalado e configurado (https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

Para quem não tiver o docker e/ou aws-cli instalado, terá uma imagem docker pronta para rodar o workshop.

## Cronograma
- 17:00 - 17:05 - [Introdução](#introdução)
- 17:05 - 17:15 - Deploy de uma task
- 17:15 - 17:25 - Deploy de uma task com o seu código
- 17:25 - 17:35 - Deploy de um service
- 17:35 - 17:40 - Criação de um load balance
- 17:40 - 17:50 - Deploy de um service com load balance
- 17:50 - 18:00 - O que faltou para um ambiente de produção?
- 18:00 - 18:15 - Freestyle && Autoscale

## Introdução
- Criar uma infra, mas não iremos dar manutenção (iremos excluir tudo no final)
- Fazeremos de perto alguns Deploys blue/green, mas sem autoscale
- Teremos logs, mas não escalavel
- Focaremos em um backend rails provendo um serviço http
- Não iremos focar em segurança (firewall, IAM, etc)
- Não iremos focar em monitoramento (Agent, CloudWatch, etc)
- Não iremos focar em backup


Deploy de uma task - guiado
  - cria um task definition com uma imagem pronta
  - cria um cluster (só o nome)
  - run a task
    Capacity provider strategy (spot)
    Application type (task)
    network (insecury secury group)
  
  espera subir && o resultado no ip

Deploy de uma task nova versão - guiado
  - Atualiza a task definition com uma imagem nova

  espera subir && o resultado no ip

Deploy de um service - guiado
  - cria um service
    Capacity provider strategy (spot)
    Application type (Service)
    network (insecury secury group)

    salva o IP
  
  espera subir && o resultado no ip

  - força um novo deploy
  espera subir && os containers subindo e morrendo
  Mostra os IP diferente

Cria o load_balance - sozinho
Deploy de um service com load_balance - guiado
  - cria um target group
  - deleta o service
  - cria um service
    Capacity provider strategy (spot)
    Application type (Service)
    network (insecury secury group)
    load_balance (Use an existing load balancer)
    target_group (criado anteriormente)
  
Demonstração de um autoscale
  - cria um service
    Capacity provider strategy (spot)
    Application type (Service)
    network (insecury secury group)
    load_balance (Use an existing load balancer)
    target_group (criado anteriormente)
    AutoScaling (1, 2)

Delete service, cluster, task definition

O que não configuramos adequadamente para prod?
 - VPC
 - Security Group
 - IAM
 - AutoScaling
 - CloudWatch

