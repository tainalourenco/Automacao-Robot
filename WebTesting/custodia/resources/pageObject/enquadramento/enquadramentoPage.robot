*** Settings ***
Documentation    Mapping e Action dos submenus Enquadramento
Library        SeleniumLibrary

                                            #Mapping
*** Variables ***
${SUBMENU_REGRA}           xpath= //span[contains(.,'Regra Enquadramento')]  
${SUBMENU_PERFIL}          xpath=//span[@class='rf-ddm-itm-lbl '][contains(.,'Perfil Enquadramento')]
${PDD_MENU_PDD}            xpath=//*[contains(text(), 'PDD')]  


                                            #Action

*** Keywords ***
Acessar Segundo menu Regra de Enquadramento
    Wait Until Element Is Visible    ${SUBMENU_REGRA}  
    Click Element    ${SUBMENU_REGRA}  

Acessar Segundo menu PDD
    Wait Until Element Is Visible    ${PDD_MENU_PDD}  
    Click Element    ${PDD_MENU_PDD}  

Acessar segundo menu Perfil Enquadramento
    Wait Until Element Is Visible    ${SUBMENU_PERFIL}  
    Click Element    ${SUBMENU_PERFIL}