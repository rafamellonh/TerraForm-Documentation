## Local state 

* É uma forma do Terraform gerenciar a infra, configurações e os recursos criados afim de manter um mapeamento do que já existe e controlar a atualização
  e criação de novos recursos.

* terraform plan -out=plan.out (salva o main.tf com o nome plan.out para depois dar um apply)
* terraform apply plan.out

* Com isso é criado o arquivo  ``` terraform.tfstate ``` onde tem ```todas``` as informações da nossa infra

## Remote State 

* Salve o arquivo ```terraform.tfstate``` em um local externo
  * Para poder usar o remote state, temos que configurar o Backend que fica dentro do bloco terraform