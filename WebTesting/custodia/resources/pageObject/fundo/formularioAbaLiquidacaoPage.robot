*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário aba Liquidação


                                            #Mapping
*** Variables ***
${FUNDO_LIQUID_AT}                    id=form:ativarLiquidacao:0
${FUNDO_SOLIC_PG}                     id=form:ativarSolicitacaoPagto:0
${FUNDO_INPUT_LIM_REEM}               id=form:limiteReembolso 
${FUNDO_PG_LIQUIDA_VIA}               id=form:liquidacaoViaMatera
${FUNDO_PG_SOLICIT_VIA}               xpath=//select[contains(@name,'form:solicitacaoViaMatera')]
${FUNDO_INPUT_PERC_REEM}              id=form:percentualReembolso
${FUNDO_ABA_CONT_CORREN}              xpath=//*[contains(text(), 'Contas Corrente')]


*** Keywords ***
Ativar liquidacao
    Click Element    ${FUNDO_LIQUID_AT} 

Ativar solicitacao de pagamento 
    Click Element    ${FUNDO_SOLIC_PG}  

Preencher limite de reembolso "${FUNDO_LIM_REEM}"
    Input Text    ${FUNDO_INPUT_LIM_REEM}     ${FUNDO_LIM_REEM}

Selecionar pagar liquidacao via "${SELECT_PG_LIQUIDA_VIA}"
    Sleep    2
    Select From List By Label    ${FUNDO_PG_LIQUIDA_VIA}    ${SELECT_PG_LIQUIDA_VIA}  

Selecionar pagar solicitacao via "${SELECT_PG_SOLICIT_VIA}"
    Sleep    2
    Select From List By Label    ${FUNDO_PG_SOLICIT_VIA}    ${SELECT_PG_SOLICIT_VIA}

Preencher percentual de reembolso "${FUNDO_PERC_REEM}"
    Input Text    ${FUNDO_INPUT_PERC_REEM}     ${FUNDO_PERC_REEM}

Submeter ao formulario da aba Conta Corrente
    Click Element    ${FUNDO_ABA_CONT_CORREN} 