*** Settings ***
Documentation    Suite para validações de usuário e senha - Escrita em Gherkin
Resource         ../resources/pageObject/login/login copy.robot 
  
Test Setup       Acessar página de login
Test Teardown    Fechar o navegador  
 
  
*** Test Cases ***

Condicao de test: Login Válido 
    [Tags]    smocktest
    Dado que uma pessoa digite um usuario valido "fromtis"
    E digite uma senha valida "fromtis!Q@W#E" 
    Quando for submtido o login 
    Então apresentara o titulo da home page "Sinqia - FIDC Custódia"  

# Caso de teste: Login Inválido
    # [Tags]    smocktest
# #     Dado que seja digitado um usuário 
# #     E preenchido a senha invalida
# #     Quando for submtido o login
# #     Então retornara a mensagem de login invalido 




