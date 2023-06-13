*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário Perfis Pdd


                                            #Mapping
*** Variables ***
${FUNDO_PERFIL_PDD}                         id=form:perfilPdd
${FUNDO_ADC_PERFIL}                         id=form:j_idt575
${FUNDO_ABA_PRECIFIC}                       xpath=//*[contains(text(), 'Precificação')]

*** Keywords ***
Selecionar Perfil Pdd "${SELECT_PERFIL_PDD_FUNDO}"
    Select From List By Label    ${FUNDO_PERFIL_PDD}    ${SELECT_PERFIL_PDD_FUNDO}  
    
Adicionar Perfil Pdd
    Click Element    ${FUNDO_ADC_PERFIL}

Submeter ao formulario Aba Precificação 
    Wait Until Page Contains Element    ${FUNDO_ABA_PRECIFIC}
    Click Element    ${FUNDO_ABA_PRECIFIC}  

