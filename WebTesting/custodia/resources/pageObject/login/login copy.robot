*** Settings ***
Documentation    Mapeamento e ações Login em Gherkin
Library          SeleniumLibrary  


*** Variables ***
${BROWSER}                 Chrome    
${URL}                     http://localhost:9081/fidcCustodia/login.xhtml 
${INPUT_USER}              j_username     
${INPUT_SENHA}             j_password

${BT_ENTRAR}               Entrar


*** Keywords ***
Acessar página de login  
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window

Dado que uma pessoa digite um usuario valido "${USUARIO}"
    Input Text    ${INPUT_USER}    ${USUARIO}

E digite uma senha valida "${SENHA}" 
    Input Password    ${INPUT_SENHA}    ${SENHA}

Quando for submtido o login
    Click Button    ${BT_ENTRAR}

Então apresentara o titulo da home page "${TITULO_HOME_PAGE}"
     Title Should Be    ${TITULO_HOME_PAGE}

Fechar o navegador
    Capture Page Screenshot
    Close Browser 