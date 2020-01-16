*** Settings ***
Resource            C:/Automação de Testes/TestePaschoalotto/resource/pesquisa_produtos_resource.robot
Resource            C:/Automação de Testes/TestePaschoalotto/resource/start_end_browser.robot
# Suite Setup         Abrir navegador
# Suite Teardown      Fechar navegador

*** Test Case ***
Caso de teste 01: Buscar e verificar informações do produto Smartphone Samsung Galaxy A70
      ### Caso de teste criado utilizando o método Gherkin - BDD.
      [Tags]  BuscarProduto01
      Dado que será necessário realizar a busca do produto "Smartphone Samsung Galaxy A70"
      Quando o "Smartphone Samsung Galaxy A70" for localizado
      Então ao selecionar o produto, o site deverá acessar as informações "Smartphone Samsung Galaxy A70"
      E verificar se o "Smartphone Samsung Galaxy A70" é entregue/vendido pelo "${TXT_LOJA}"
      E verificar o valor para pagamento à vista
      E verificar o valor do cashback
      E verificar o valor do frete
      E o prazo de entrega

Caso de teste 02: Buscar e verificar informações do produto Smartphone Motorola One Vision
      [Tags]  BuscarProduto02
      Dado que será necessário realizar a busca do produto "Smartphone Motorola One Vision"
      Quando o "Smartphone Motorola One Vision" for localizado
      Então ao selecionar o produto, o site deverá acessar as informações "Smartphone Samsung Galaxy A70"
      E verificar se o "Smartphone Motorola One Vision" é entregue/vendido pelo "${TXT_LOJA}"
      E verificar o valor para pagamento à vista
      E verificar o valor do cashback
      E verificar o valor do frete
      E o prazo de entrega

Caso de teste 03: Buscar e verificar informações do produto Smartphone Xiaomi Redmi Note 7
      [Tags]  BuscarProduto03
      Dado que será necessário realizar a busca do produto "Smartphone Xiaomi Redmi Note 7"
      Quando o "Smartphone Xiaomi Redmi Note 7" for localizado
      Então ao selecionar o produto, o site deverá acessar as informações "Smartphone Samsung Galaxy A70"
      E verificar se o "Smartphone Xiaomi Redmi Note 7" é entregue/vendido pelo "${TXT_LOJA}"
      E verificar o valor para pagamento à vista
      E verificar o valor do cashback
      E verificar o valor do frete
      E o prazo de entrega
