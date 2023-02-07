## Meta Arguments

## Depends_on

* depends_on = azurerm_resource_group.resource_group

https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on

## Count

* Usado para indicar quantas copias de tal bloco o terraform deverá criar

https://developer.hashicorp.com/terraform/language/meta-arguments/count

## For_each

* Utilizado para criar multiplos recursos de uma só vez, e também para criar multiplas copias utilizando somente um bloco

https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

## Provider

* É possível citar mais de um provider no seu códgio do mesmo tipo, cite 2 providers do Azure
  * Com isso é possível fazer o mesmo deploy em regiões, contas diferentes e etc etc

https://developer.hashicorp.com/terraform/language/meta-arguments/resource-provider
https://developer.hashicorp.com/terraform/language/meta-arguments/module-providers

## Lifecycle

* Só pode ser usado em blocos de resource