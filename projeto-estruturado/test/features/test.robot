*** Settings ***

Resource    ../../src/config/package.robot

Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Caso de teste 01
    [Tags]    ct01
    Acessar a página da Learning Prime
    Clicar no segundo produto
    Tirar print