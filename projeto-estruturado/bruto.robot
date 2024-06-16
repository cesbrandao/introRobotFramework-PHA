*** Settings ***

Library    SeleniumLibrary

Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Variables ***

&{PRODUTO}
...    primeiro=id:product_1
...    segundo=id:product_2

*** Keywords ***

## Test Setup ##
Abrir Navegador
    Open Browser    about:blank    chrome
    Maximize Browser Window

## Test Teardown ##
Fechar Navegador
    Close Browser

Acessar a página da Learning Prime
    Go To    https://learningprime.com.br/

Clicar no segundo produto
    Wait Until Element Is Visible    ${PRODUTO.segundo}
    Click Element    ${PRODUTO.segundo}

Tirar print
    Sleep    1s
    Capture Page Screenshot

*** Test Cases ***

Caso de teste 01
    [Tags]    ct01
    Acessar a página da Learning Prime
    Clicar no segundo produto
    Tirar print