*** Settings ***
Documentation    Mapeamento e ações da Home
Library        SeleniumLibrary



*** Variables ***
${MENU_ENQ}                xpath=//*[contains(text(), 'Enquadramento')]
${MENU_CADASTRO}           xpath=//div[@class='rf-ddm-lbl-dec'][contains(@id,'label')][contains(.,'Cadastro')]
${MENU_SEG}                id=menuForm:j_idt84_label  
${MENU_LIQUIDACAO}         id=menuForm:j_idt119


*** Keywords ***
Validar titulo da home page "${TITULO_HOME_PAGE}"
     Title Should Be    ${TITULO_HOME_PAGE}

Submeter primeiro menu Cadastro 
    Click Element  ${MENU_CADASTRO}

Acessar primeiro menu Enquadramento
    Click Element  ${MENU_ENQ}   

Submeter primeiro menu Seguranca
    Click Element  ${MENU_SEG}    

Submeter primeiro menu Liquidação 
    Click Element  ${MENU_LIQUIDACAO}             


