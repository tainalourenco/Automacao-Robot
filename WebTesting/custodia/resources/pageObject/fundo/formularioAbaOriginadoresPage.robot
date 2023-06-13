*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário aba Originadores


                                            #Mapping
*** Variables ***
${FUNDO_NM_ORIGINADOR}                         id=form:idOriginador
${FUNDO_CONTA_ORIGINADOR}                      id=form:idContaOriginador
${FUNDO_DT_INI_ORIGINADOR}                     id=form:dtInicioOriginadorInputDate 
${FUNDO_INI_REL_HJ_ORIGINADOR}                 xpath=//div[@class='rf-cal-tl-btn'][contains(.,'Today')]
${FUNDO_INPUT_COD_ORIGINADOR}                  id=form:cdConsultoria
${FUNDO_BT_ADC_ORIGINADOR}                     id=form:j_idt668
${FUNDO_ABA_REPRESEN}                          xpath=//*[contains(text(), 'Representantes')]



*** Keywords ***
Selecionar originador "${SELECT_NM_ORIGINADOR_FUNDO}"
    Select From List By Label    ${FUNDO_NM_ORIGINADOR}    ${SELECT_NM_ORIGINADOR_FUNDO}  
    
Selecionar conta do originador "${SELECT_CONTA_ORIGINADOR_FUNDO}"
    Sleep    2   
    Select From List By Label    ${FUNDO_CONTA_ORIGINADOR}    ${SELECT_CONTA_ORIGINADOR_FUNDO} 
    
Selecionar data inicio de relacionamento do originador 
    Click Element    ${FUNDO_DT_INI_ORIGINADOR}  
    Sleep    2 
    ClicK Element    ${FUNDO_INI_REL_HJ_ORIGINADOR}  

Preencher codigo do Originador "${COD_ORIGINADOR_FUNDO}" 
    Input Text    ${FUNDO_INPUT_COD_ORIGINADOR}    ${COD_ORIGINADOR_FUNDO}

Adicionar originador
    Click Element    ${FUNDO_BT_ADC_ORIGINADOR} 

Submeter ao formulário aba Representantes
    Wait Until Page Contains Element    ${FUNDO_ABA_REPRESEN}
    Click Element    ${FUNDO_ABA_REPRESEN}

   

