*** Settings ***
Documentation    Demonstração de tipos de variáveis
Library          Collections

*** Variables ***
${STRING}           frase qualquer
${STRING_NUMBER}    999
${NUMBER}           ${666}
${BOOLEAN}          ${TRUE}

@{LISTA}    Carlos    Eduardo    Opala Germana

&{DICIONARIO}    nome=Babi Cutrim    email=babigames@gmail.com    idade=24

*** Test Cases ***
Cenario 01: Variavel Simples 
    Logar Variavel Simples No Console

Cenario 02: Variavel Lista
    Logar Variavel Lista No Console

Cenario 03: Variavel Dicionario
    Logar Variavel Dicionario No Console

*** Keywords ***
Logar Variavel Simples No Console
    Log To Console    .
    Log To Console    ---------------------------------
    Log To Console    Variável Simples
    Log To Console    Sou uma variável simples, meu conteúdo é ${STRING}
    Log To Console    Sou uma variável simples, meu conteúdo é ${STRING_NUMBER}
    Log To Console    Sou uma variável simples, meu conteúdo é ${NUMBER}
    Log To Console    Sou uma variável simples, meu conteúdo é ${BOOLEAN}
    Log To Console    ---------------------------------

Logar Variavel Lista No Console
    Log To Console    .
    Log To Console    ---------------------------------
    Log To Console    Primeiro cliente: ${LISTA}[0]
    Log To Console    Segundo cliente: ${LISTA}[1]
    Log To Console    Terceiro cliente: ${LISTA}[2]
    Log To Console    ---------------------------------

Logar Variavel Dicionario No Console
    Log To Console    .
    Log To Console    ---------------------------------
    Log To Console    Nome do cliente: ${DICIONARIO.nome}
    Log To Console    Email do cliente: ${DICIONARIO.email}
    Log To Console    Idade do cliente: ${DICIONARIO.idade}
    Log To Console    ---------------------------------