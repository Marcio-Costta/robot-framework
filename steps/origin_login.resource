*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    Collections
Library    OperatingSystem
Resource    ../pages/origin_login_pages.resource

*** Keywords ***
que estou no site web
    Validar tela inicial
insiro as credenciais validas
    Preencher credenciais

o login devera ser realizado com sucesso
    Confirmar Login

insiro as credenciais invalidas
    Preencher credenciais invalidas

o login não devera ser realizado
    Validar mensagem de erro

preencho as informações para recuperar Senha
    Resetar Senha

a senha devera ser resetada com sucesso
    Validar recuperação da Senha