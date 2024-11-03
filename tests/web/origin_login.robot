*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    OperatingSystem
Library    Collections
Resource    ../../setup/setup.resource
Resource    ../../steps/origin_login.resource

*** Test Cases ***
CT01 - Realizar Login no ambiente com sucesso
    [Documentation]    Teste para login com sucesso
    [Setup]   Inicializar Navegador    ${BROWSER}
    Given que estou no site web
    When insiro as credenciais validas
    Then o login devera ser realizado com sucesso
    [Teardown]    Fechar Navegador

CT02 - Realizar Login com usuário inválido
    [Documentation]    Teste para Login inválido
    [Setup]   Inicializar Navegador    ${BROWSER}
    Given que estou no site web
    When insiro as credenciais invalidas
    Then o login não devera ser realizado
    [Teardown]    Fechar Navegador

CT03 - Realizar Reset de Senha
    [Documentation]    Teste para reset de senha
    [Setup]   Inicializar Navegador    ${BROWSER}
    Given que estou no site web
    When preencho as informações para recuperar Senha
    Then a senha devera ser resetada com sucesso
    [Teardown]    Fechar Navegador