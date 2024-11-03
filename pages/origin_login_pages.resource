*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    OperatingSystem
Library    Collections
Resource   ../constants/variaveis_globais.resource

*** Variables ***
${LOGO_ORANGE}    //div[@class='orangehrm-login-branding']

*** Keywords ***
Validar tela inicial
    Title Should Be    title=OrangeHRM
    Sleep    10s
    Wait Until Element Is Visible    locator=${LOGO_ORANGE}    

Preencher credenciais
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}

Confirmar Login
    Click Element                      ${BTN_LOGIN}
    Wait Until Element Is Visible      ${DASHBOARD}

Preencher credenciais invalidas
    Input Text    ${USERNAME_FIELD}    ${FALSE_USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${FALSE_PASSWORD}

Validar mensagem de erro
    Click Element                      ${BTN_LOGIN}
    Wait Until Element Is Visible      ${LOGIN_ERROR}

Resetar Senha
    Click Element                       ${BTN_FORGOT}
    Wait Until Element Is Visible       ${REST_PASSWORD}
    Input Text                          ${RESET_FIELD}    ${USERNAME}
    Click Element                       ${BTN_RESET}
    
Validar recuperação da Senha
    Wait Until Element Is Visible       ${RESET_SUCESS}