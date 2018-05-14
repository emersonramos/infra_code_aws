# TESTE ESTABILIS

O projeto deve ser iniciado pelo arquivo deploy.sh.

# DEPLOY.SH

O deploy.sh faz a criação da infraestrutura na AWS, para isso, será solicitada sua ACCESS KEY e SECRET ACCESS KEY.

O script deverá ser executado da seguinte forma:

- ./deploy.sh diretorio opcao

onde:

- Diretório aws_vpc - Cria a infraestrutura na AWS
- Diretório aws_ec2/key - Cria chave ssh para acesso
- Diretório aws_ec2 - Cria instâncias EC2 na AWS

Opções:

- init: Este comando é usado para iniciar o working directory que contém os arquivos de configuração do Terraform
- plan: Este comando faz uma verificação do código e determina quais ações são necessárias para atingir o estado desejado nos arquivos de configurações.
- apply: Este comando é utilizado para aplicar as configurações.

Utilize os comandos abaixo para iniciar a VPC na AWS

- ./deploy.sh aws_vpc init

- ./deploy.sh aws_vpc plan
 
- ./deploy.sh aws_vpc apply

Utilize os comandos abaixo para criação da chave ssh

- ./deploy.sh aws_ec2/key init

- ./deploy.sh aws_ec2/key plan

- ./deploy.sh aws_ec2/key apply

Utilize os comandos abaixo para iniciar as instâncias EC2 na AWS

- ./deploy.sh aws_ec2 init

- ./deploy.sh aws_ec2 plan

- ./deploy.sh aws_ec2 apply

# DOCKER HUB

Endereço da imagem no Docker hub: https://hub.docker.com/r/eramos/emersonramos/
- docker pull eramos/emersonramos

# DOCKERFILE

Dockerfile disponível em nginx_emersonramos/dockerfile

# DOCKER COMPOSE

Compose disponível em compose/docker-compose.yml
