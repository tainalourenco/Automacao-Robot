*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário aba Ativos


                                            #Mapping
*** Variables ***
${FUNDO_INPUT_AT_VENCER}                      id=form:ativoAVencer
${FUNDO_INPUT_AT_VENCIDO}                     id=form:ativoVencidos
${FUNDO_INPUT_AT_PDD}                         id=form:ativoPDD
${FUNDO_ABA_ORIGINADORES}                     xpath=//*[contains(text(), 'Originadores')]


*** Keywords ***
Preencher ativo a vencer "${AT_A_VENCER_FUNDO}" 
    Input Text    ${FUNDO_INPUT_AT_VENCER}    ${AT_A_VENCER_FUNDO}

Preencher ativo vencidos "${AT_VENCIDO_FUNDO}" 
    Input Text    ${FUNDO_INPUT_AT_VENCIDO}    ${AT_VENCIDO_FUNDO}

Preencher ativo pdd "${AT_PDD_FUNDO}" 
    Input Text    ${FUNDO_INPUT_AT_PDD}    ${AT_PDD_FUNDO}

Submeter ao formulário Aba Originadores 
    Wait Until Page Contains Element    ${FUNDO_ABA_ORIGINADORES}
    Click Element    ${FUNDO_ABA_ORIGINADORES}  