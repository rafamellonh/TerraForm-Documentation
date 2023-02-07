## Autenticar 

* Crie um ``` App Registrations ``` no Azure AD

* Cole as informações geradas pelo App

``` 
export ARM_CLIENT_ID=59e6163b-4af9-4037-ab65-dd7a6e298efb
export ARM_TENANT_ID=5422d9f1-b900-469d-a957-9209d72334f7
export ARM_SUBSCRIPTION_ID=820916fd-30ee-47d2-817a-18d6e8073b35
export ARM_CLIENT_SECRET=DUd8Q~kpCntym6tCOE290dwvOtl8jWqWbDf1~a4Y

 ``` 

 * Crie uma ``` Client Credentials ``` 
 * Em Access Control - Add role assignment - contributor e add o app criado

## Segunda opção

* Baixe o Azure cli e o instale
* Configure a variavel de ambiente
* az login = para logar
* az login --tenant TENANT_ID = para logar direto no tenant