*** Settings ***
Library     String
Library     SeleniumLibrary
Resource    C:/Automação de Testes/TestePaschoalotto/resource/elements/elements_busca.robot

*** Variables ***
${DEFAULT_URL}          https://www.americanas.com.br/
${BROWSER}              chrome

*** Keywords ***
### Setup - Abrir o navegador e verifica se a página do site está "ON"
Abrir navegador
    Open Browser                  ${DEFAULT_URL}     ${BROWSER}
    Set Selenium Implicit Wait    4
    set selenium speed            0.2
    Maximize Browser Window
    Title Should Be               Americanas.com - A maior loja. Os menores preços.

### Teardown  - Fechar o navegador
Fechar navegador
    Close Browser
