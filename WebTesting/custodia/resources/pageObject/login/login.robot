*** Settings ***
Documentation    Mapeamento e ações do Login
Library          SeleniumLibrary  


*** Variables ***
${BROWSER}                 Chrome    #options=add_experimental_option("detach", True)
${URL}                     http://localhost:9081/fidcCustodia/login.xhtml 
${INPUT_USER}              j_username     
${INPUT_SENHA}             j_password
${BT_ENTRAR}               Entrar


*** Keywords ***
Acessar página de login, digitar usuário e senha valido "${USUARIO}" e "${SENHA}" e submter o formulario de login 
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Input Text    ${INPUT_USER}    ${USUARIO}
    Input Password    ${INPUT_SENHA}    ${SENHA}
    Click Button    ${BT_ENTRAR}          

Fechar o navegador
    Capture Page Screenshot
    Close Browser