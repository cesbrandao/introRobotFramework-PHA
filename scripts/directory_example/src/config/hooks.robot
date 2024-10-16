*** Settings ***

Documentation    Este é o arquivo de configuração do Robot

Resource    package.robot

*** Keywords ***
## Test Setup ##
Abrir navegador
    Open Browser    about:blank    chrome
    Maximize Browser Window

## Test Teardown ##
Fechar navegador
    Close Browser
