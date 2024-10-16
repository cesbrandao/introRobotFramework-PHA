*** Settings ***

Documentation    Atividades sobre a sintaxe e estruturas do Robot Framework

Library    Collections

*** Variables ***

${ANO}    ${2024}
${INITIAL_USERNAME}    user
${INITIAL_PASSWORD}    pass

&{DICIONARIO}    nome=Carlos    idade=27    
...    rua=Coronel Frederico Gomes    numero=806    cep=62011-150
...    bairro=Centro    cidade=Sobral    uf=CE

@{FRUTAS}    Banana    Maçã    Melancia    Laranja    Goiaba

*** Test Cases ***

Exercício Dicionário
    [Documentation]    Exibir nome, idade, rua, numero, cep, bairro, 
    ...    cidade e estado no console a partir de um dicionário.
    [Tags]    atividade01
    Exibir dados

Exercício Argumentos e Retornos + If
    [Documentation]    Criar uma keyword que receba idade e retorne o ano de nascimento
    ...    Se o ano for menor que 2000, exibir mensagem dizendo que nasceu no século passado
    [Tags]    atividade02
    #Calcular ano de nascimento de uma pessoa com 20 anos
    Calcular ano de nascimento de uma pessoa com 27 anos

Exercício For Simples + Lista
    [Documentation]    Exiba cada uma das frutas de uma lista usando um For Simples
    [Tags]    atividade03
    Listar frutas

Exercício For in Range
    [Documentation]    Crie um loop que conte quantos números par existem entre 0 e 10
    [Tags]    atividade04
    Contar números

Exercício Alterar e Exibir Senha no Dicionário
    [Documentation]    Na preparação do caso de teste (setup) crie um dicionário para conter as 
    ...    credenciais de acesso (Usuário e Senha).
    ...    Crie um teste que altere o valor da senha e exiba o dicionário criado no setup com a senha alterada.
    ...    Na finalização do caso de teste (teardown) retorne o campo senha para o valor inicial.
    [Tags]    atividade05
    [Setup]    Preparar Credenciais
    Alterar Senha
    Exibir Credenciais
    [Teardown]    Restaurar Senha

*** Keywords ***

Exibir dados
    Log To Console    .
    Log To Console    ---------------------------------
    Log To Console    Dados
    Log To Console    Nome: ${DICIONARIO.nome}, ${DICIONARIO.idade} anos
    Log To Console    Endereço: Rua ${DICIONARIO.rua}, ${DICIONARIO.numero}, ${DICIONARIO.cep}, ${DICIONARIO.bairro}, ${DICIONARIO.cidade}-${DICIONARIO.uf}
    Log To Console    ---------------------------------

Calcular ano de nascimento de uma pessoa com ${idade} anos
    ${ano_nascimento}    Evaluate    ${ANO} - ${idade}
    Log To Console    .
    Log To Console    Ano de nascimento: ${ano_nascimento}
    IF    ${ano_nascimento} < 2000
        Log To Console    Usuário nasceu no século passado.
    END
    
Listar frutas
    Log To Console    .
    Log To Console    Lista de frutas:
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${fruta}
    END

Contar números
    [Arguments]    ${quantidade}=${0}
    Log To Console    .
    FOR    ${numero}    IN RANGE    1    11
        IF    ${numero} % 2 == 0
            ${quantidade}    Evaluate    ${quantidade} + ${1}
        END   
    END
    Log To Console    Quantidade de números pares no intervalo: ${quantidade}

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