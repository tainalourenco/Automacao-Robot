*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário aba Conta Corrente do fundo


                                            #Mapping
*** Variables ***
${FUNDO_BANCO_CONTA}                         id=form:banco
${FUNDO_INPUT_AG_CONTA}                      id=form:agencia 
${FUNDO_INPUT_NU_CONTA}                      id=form:conta   
${FUNDO_INPUT_DIG_CONTA}                     id=form:digitoConta
${FUNDO_INPUT_DESC_CONTA}                    id=form:descricao 
${FUNDO_BT_SALVAR}                           xpath=//a[contains(.,'Salvar')]


*** Keywords ***
Selecionar banco conta corrente "${SELECT_BANCO_CONTA}"
    Select From List By Label    ${FUNDO_BANCO_CONTA}    ${SELECT_BANCO_CONTA} 

Preencher numero da agencia da conta corrente "${FUNDO_AG_CONTA}"
    Input Text    ${FUNDO_INPUT_AG_CONTA}     ${FUNDO_AG_CONTA}
    
Prencher numero da conta "${FUNDO_NU_CONTA}"
    Input Text    ${FUNDO_INPUT_NU_CONTA}     ${FUNDO_NU_CONTA} 

Prencher digito da conta "${FUNDO_DIG_CONTA}"
    Input Text    ${FUNDO_INPUT_DIG_CONTA}     ${FUNDO_DIG_CONTA} 

Preencher descricao da conta "${FUNDO_DESC_CONTA}"
    Input Text    ${FUNDO_INPUT_DESC_CONTA}     ${FUNDO_DESC_CONTA} 

Submeter formulario de adicao do fundo
    Click Element    ${FUNDO_BT_SALVAR} 