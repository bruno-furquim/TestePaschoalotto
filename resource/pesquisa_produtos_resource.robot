*** Settings ***
Library     String
Library     BuiltIn
Library     SeleniumLibrary
Resource    C:/Automação de Testes/TestePaschoalotto/resource/start_end_browser.robot


*** Keywords ***

Dado que será necessário realizar a busca do produto "${SMARTPHONE}"
      Abrir navegador
      Wait Until Element Is Enabled    ${SCR_BUSCA}    5s
      Input Text                       ${SCR_BUSCA}    ${SMARTPHONE}
      Click Element                    ${BTN_BUSCA}

Quando o "${SMARTPHONE}" for localizado
      Title Should Be                  ${SMARTPHONE} em Promoção nas Lojas Americanas.com
      Wait Until Element Is Enabled    ${CARD_PRODUTO}

Então ao selecionar o produto, o site deverá acessar as informações "Smartphone Samsung Galaxy A70"
      Click Element                       ${LNK_PRODUTO}
      Wait Until Page Contains Element    ${BTN_COMPRAR}

E verificar se o "${SMARTPHONE}" é entregue/vendido pelo "${TXT_LOJA}"
      Run Keyword If    '${SMARTPHONE}' == '${TXT_LOJAEXTERNA}'
      ...                Page Should Contain    ${TXT_LOJAEXTERNA}
      ...                ELSE Run Keywords
      ...                Page Should Contain    ${TXT_LOJA}

E verificar o valor para pagamento à vista
      ${ValorProduto}=    Get Element Attribute   dom:document.getElementsByClassName("price__SalesPrice-ej7lo8-2 kjGSBk TextUI-sc-12tokcy-0 bLZSPZ")[0]  innerText
      Log To Console    ${ValorProduto}

E verificar o valor do cashback
      Click Element                       ${LNK_FORMAPAGAMENTO}
      Wait Until Page Contains Element    ${LNK_AME}
      Click Element                       ${LNK_AME}
      Wait Until Page Contains            ${TXT_TEXTOAME}
      ${ValorCashback}=   Get Element Attribute     dom:document.getElementsByClassName("SpacingUI-pvph4q-0 fHTSIH ViewUI-sc-1ijittn-6 iXIDWU")[0]  innerText
      Set Global Variable    ${Novo_ValorCashback}    ${ValorCashback}
      ${ValorCashback}=   Remove String    ${Novo_ValorCashback}   R$ 1.899,00 com Ame no cartão de crédito em até 12x de R$ 158,25 s/ juros e receba
      Log To Console    ${ValorCashback}
      Click Element     ${BTN_FECHAR_AME}
      Mouse Over        ${INP_CEP}

E verificar o valor do frete
      Wait Until Page Contains Element    ${INP_CEP}  5s
      Click Element                       ${INP_CEP}
      Input Text                          ${INP_CEP}    ${CEP}
      Element Should Be Enabled           ${BTN_CEP}
      Click Button                        ${BTN_CEP}
      Wait Until Page Contains    receber em até  5s
      Wait Until Page Contains            ${CEP}          5s
      ${ValorFrete}=   Get Element Attribute    dom:document.getElementsByClassName("TextUI-sc-12tokcy-0 LbEgj")[2]  innerText
      ${ValorFrete1}=  Get Element Attribute    dom:document.getElementsByClassName("TextUI-sc-12tokcy-0 LbEgj")[6]  innerText
      Set Variable                        ${ValorFrete}
      Set Variable                        ${ValorFrete1}
      Run Keyword If    '${ValorFrete1}' == 'Seja'
      ...                Run Keyword   Log to Console   ${ValorFrete}
      ...                ELSE
      ...                Run Keyword   Log To Console   ${ValorFrete1}


E o prazo de entrega
      Wait Until Page Contains    ${TXT_FRETE}
      ${DataEntrega}=    Get Element Attribute    dom:document.getElementsByClassName("TextUI-sc-12tokcy-0 LbEgj")[1]  innerText
      ${DataEntrega1}=   Get Element Attribute    dom:document.getElementsByClassName("TextUI-sc-12tokcy-0 LbEgj")[5]  innerText
      Set Variable                ${DataEntrega}
      Set Variable                ${DataEntrega1}

      Run Keyword If    '${DataEntrega1}' == 'Americanas.com'
      ...                Run Keyword   Log to Console     ${DataEntrega}
      ...                ELSE
      ...                Run Keyword   Log To Console     ${DataEntrega1}
      Fechar navegador
