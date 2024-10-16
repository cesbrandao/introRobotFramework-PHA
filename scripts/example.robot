*** Settings ***
Test Setup              Abrir o navegador
Test Teardown           Fechar o navegador
Library                 SeleniumLibrary

*** Variable ***
${BROWSER}          chrome
${URL}              http://automationpractice.com

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto foi listado no site

*** Keywords ***
##    Setup    ##
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

##    Teardown    ##
Fechar o navegador
    Close Browser

Acessar a página home do site Automation Practice
    Wait Until Element Is Visible       xpath=//*[@id="block_top_menu"]/ul
    Title Should Be                     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          name=search_query       ${PRODUTO}

Clicar no botão pesquisar
    click element       name=submit_search

Conferir se o produto foi listado no site
    Wait Until Element Is Visible       xpath=//*[@id="center_column"]/h1
    Title Should Be                     Search - My Store