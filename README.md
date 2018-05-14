TESTE ESTABILIS

O projeto deve ser iniciado pelo arquivo deploy.sh.

DEPLOY.SH

O deploy.sh faz a criação da infraestrutura na AWS, para isso, será solicitada sua ACCESS KEY e SECRET ACCESS KEY.

Utilize os comandos abaixo para iniciar a VPC na AWS

./deploy.sh aws_vpc init - Este comando é usado para iniciar o working directory que contém os arquivos de configuração do Terraform

./deploy.sh aws_vpc plan - Este comando faz uma verificação do código e determina quais ações são necessárias para atingir o estado desejado nos arquivos de configurações.

./deploy.sh aws_vpc apply - Este comando é utilizado para aplicar as configurações.

Utilize os comandos abaixo para iniciar as instâncias EC2 na AWS

./deploy.sh aws_ec2 init

./deploy.sh aws_ec2 plan

./deploy.sh aws_ec2 apply