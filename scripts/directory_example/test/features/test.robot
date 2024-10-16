*** Settings ***

Resource    ../../src/config/package.robot

Test Setup    Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Caso de teste 1
    [Tags]    tc1
    Acessar a pagina do Learning Prime
    Clicar no segundo produto
    Tirar print