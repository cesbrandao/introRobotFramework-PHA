*** Settings ***

Documentation    Configuração do robot

Resource    package.robot

*** Keywords ***

##    Test Setup    ##
Abrir Navegador
    Open Browser    about:blank    chrome
    Maximize Browser Window

##    Test Teardown    ##
Fechar Navegador
    Close Browser