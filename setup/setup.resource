*** Settings ***
Resource    ../constants/variaveis_globais.resource

*** Keywords ***

Inicializar Navegador
    [Arguments]    ${BROWSER}
    Open Browser    browser=${BROWSER}
    Go To    ${ORANGE_URL}
    Maximize Browser Window

Fechar Navegador
    Capture Page Screenshot
    Close All Browsers    