#!/usr/bin/env bash
if [ -z "$1" ]
then
  echo "Informe o diretório do projeto Terraform"
  exit 1
fi

# Autenticacao AWS
echo Digite sua Access Key da AWS:
read AWS_ACCESS
echo Digite sua Secret Key da AWS:
read AWS_SECRET
export AWS_ACCESS_KEY_ID=$AWS_ACCESS
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET

# Config da regiao
export AWS_DEFAULT_REGION="sa-east-1"
terraform=$PWD
PATH=$PATH:$terraform
cd $1
terraform $2
