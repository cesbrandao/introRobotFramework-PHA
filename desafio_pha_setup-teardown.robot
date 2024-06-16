*** Settings ***

Library    Collections

*** Variables ***
${INITIAL_USERNAME}    user
${INITIAL_PASSWORD}    pass

*** Test Cases ***
Alterar e Exibir Senha no Dicionário
    [Setup]    Preparar Credenciais
    Alterar Senha
    Exibir Credenciais
    [Teardown]    Restaurar Senha

*** Keywords ***
Preparar Credenciais
    # Criando um dicionário com as credenciais de acesso
    &{credentials}=    Create Dictionary    Usuario=${INITIAL_USERNAME}    Senha=${INITIAL_PASSWORD}
    Set Suite Variable    ${credentials}
    Log To Console    .
    Log To Console    Dados iniciais: ${credentials}

Alterar Senha
    # Alterando a senha no dicionário
    Set To Dictionary    ${credentials}    Senha=new_pass

Exibir Credenciais
    # Exibindo o dicionário com a senha alterada
    Log To Console    Novos dados: ${credentials}

Restaurar Senha
    # Restaurando a senha para o valor inicial
    Set To Dictionary    ${credentials}    Senha=${INITIAL_PASSWORD}
    Log To Console    Dados restaurados: ${credentials}