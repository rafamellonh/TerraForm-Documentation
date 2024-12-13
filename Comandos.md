# Comandos mais usados no Terraform

## **Inicialização e Configuração**
1. `terraform init` – Inicializa o Terraform no diretório atual.
2. `terraform validate` – Valida a configuração dos arquivos `.tf`.
3. `terraform fmt` – Formata o código Terraform para seguir padrões de estilo.
4. `terraform version` – Mostra a versão instalada do Terraform.

## **Planejamento e Aplicação**
5. `terraform plan` – Gera um plano de execução para visualizar as mudanças antes de aplicá-las.
6. `terraform apply` – Aplica as mudanças descritas no plano.
7. `terraform refresh` – Atualiza o estado com as informações reais da infraestrutura.

## **Gerenciamento de Estado**
8. `terraform state list` – Lista todos os recursos no estado atual.
9. `terraform state show <resource>` – Mostra os detalhes de um recurso gerenciado.
10. `terraform state rm <resource>` – Remove um recurso do estado sem destruí-lo.
11. `terraform state mv <source> <destination>` – Move um recurso no estado.

## **Destruição e Modificação**
12. `terraform destroy` – Destrói todos os recursos gerenciados pelo Terraform.
13. `terraform taint <resource>` – Marca um recurso para ser recriado.
14. `terraform untaint <resource>` – Remove a marcação de recriação de um recurso.

## **Depuração e Visualização**
15. `terraform show` – Exibe informações detalhadas do estado ou plano.
16. `terraform graph` – Cria uma representação visual da infraestrutura.
17. `terraform output` – Exibe os valores de saída definidos no código Terraform.
18. `terraform console` – Abre um console interativo para testar expressões.

## **Avançado**
19. `terraform import <resource> <id>` – Importa um recurso existente para o estado do Terraform.
20. `terraform workspace list` – Lista os workspaces (ambientes) disponíveis.
21. `terraform workspace select <name>` – Alterna para um workspace específico.
