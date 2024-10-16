*** Settings ***

Documentation    Exemplo padrão

Library    SeleniumLibrary

*** Variables ***

${URL}    https://www.google.com.br

*** Test Cases ***

Cenario: Execução em Headless
    #Open Browser    ${URL}    headlessfirefox
    Open Browser    ${URL}    headlesschrome
    Capture Page Screenshot
    Sleep    2s
    Close All Browsers