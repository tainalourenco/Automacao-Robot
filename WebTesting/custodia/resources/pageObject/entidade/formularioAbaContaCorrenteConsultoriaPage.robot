*** Settings ***
Library          SeleniumLibrary
Documentation    Mapping e Action Aba Conta Corrente Consultoria

                                                    #Mapping
*** Variables ***
${ENTIDADE_COD_BANCO}                          id=form:banco
${ENTIDADE_INPUT_NU_AG}                        id=form:ag
${ENTIDADE_INPUT_NU_CONTA}                     id=form:cc
${ENTIDADE_INPUT_DESC_CONTA}                   id=form:descricao
${ENTIDADE_BT_ADC_CONTA}                       Adicionar
${ENTIDADE_ABA_REPRES}                         xpath=//*[contains(text(), 'Representantes')]


                                                    #Action 
*** Keywords ***
Selecionar codigo do banco "${SELECT_COD_BANCO_ENTIDADE}"
    Select From List By Value    ${ENTIDADE_COD_BANCO}     ${SELECT_COD_BANCO_ENTIDADE} 

Preencher agencia do banco "${ENTIDADE_NU_AG}"
    Input Text    ${ENTIDADE_INPUT_NU_AG}     ${ENTIDADE_NU_AG}

Preencher conta "${ENTIDADE_NU_CONTA}"
    Input Text    ${ENTIDADE_INPUT_NU_CONTA}     ${ENTIDADE_NU_CONTA}

Preencher descrição da conta "${ENTIDADE_DESC_CONTA}"
    Input Text    ${ENTIDADE_INPUT_DESC_CONTA}     ${ENTIDADE_DESC_CONTA}    

Adicionar conta 
    Click Link    ${ENTIDADE_BT_ADC_CONTA}  

Submeter aba Representantes
    Wait Until Page Contains Element    ${ENTIDADE_ABA_REPRES} 
    Click Element    ${ENTIDADE_ABA_REPRES}        