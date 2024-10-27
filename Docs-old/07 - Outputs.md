## Outputs

* Serve para que seja retornado informações para administrador após o apply, como por exempl o ip da máquina. Dessa forma começamos criando um arquivo
  chamado outputs.tf

```  
  output "ip_address" {
  value = aws_instance.Teste.public_ip
}

```
* Feito isso, quando executarmos o plan novamente o Terraform externalizará as informações obtidas no output como o exemplo abaixo


``` 
Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ip_address = 185.199.110.153
 ``` 
 