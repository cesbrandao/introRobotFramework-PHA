*** Settings ***

Library    SeleniumLibrary

Suite Setup    Acessar site e aguardar o carregamento
Suite Teardown    Close All Browsers

*** Variables ***
${URL}    https://demoqa.com/frames
# buscar o localizador do iframe
${frame}    id=frame1
${label}    id=sampleHeading
${expected_text}    This is a sample page

*** Test Cases ***

Cenario: Capturar text de um Iframe
    # seleciona o iframe
    Select Frame    ${frame}
    ${text}    Get Text    ${label}
    Should Not Be Empty    ${text}
    Should Be Equal    ${text}    ${expected_text}

*** Keywords ***

Acessar site e aguardar o carregamento
    Open Browser    ${URL}    headlesschrome
    Wait Until Page Contains    Sample Iframe page