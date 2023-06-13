*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário Precificação


                                            #Mapping
*** Variables ***
${FUNDO_MOD_PREC}                           id=form:metodoPrecificacao
${FUNDO_APLICAR_PREC}                       id=form:aplicarPrecificacao
${FUNDO_ABA_CART_ATIVOS}                    xpath=//*[contains(text(), 'Carteira Sistema de Ativos')]

                                           #Action
*** Keywords ***
Selecionar modelo de precificacao "${SELECT_MOD_PREC_FUNDO}"
    Select From List By Label    ${FUNDO_MOD_PREC}     ${SELECT_MOD_PREC_FUNDO} 

Selecionar aplica-se precificacao em "${SELECT_APLICAR_PREC_FUNDO}"
    Select From List By Label    ${FUNDO_APLICAR_PREC}    ${SELECT_APLICAR_PREC_FUNDO} 

Submeter ao formulário da aba Carteira Sistema De Ativos 
    Wait Until Page Contains Element    ${FUNDO_ABA_CART_ATIVOS} 
    Click Element    ${FUNDO_ABA_CART_ATIVOS} 
