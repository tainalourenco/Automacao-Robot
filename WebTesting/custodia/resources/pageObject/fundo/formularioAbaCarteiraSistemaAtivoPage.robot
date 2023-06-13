*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário Carteira Sistema de Ativos


                                            #Mapping
*** Variables ***
${FUNDO_TIPO_COTA}                          id=form:tipoCotaSac
${FUNDO_INPUT_NU_COD_CART}                  id=form:codigoCarteiraSac
${FUNDO_BT_ADC_TP_COD_CART}                 id=form:j_idt617   
${FUNDO_ABA_ATIVOS}                         id=form:aba7:header:inactive

                                            #Action
*** Keywords ***
Selecionar tipo de cota "${SELECT_TIPO_COTA_FUNDO}"
    Select From List By Label    ${FUNDO_TIPO_COTA}    ${SELECT_TIPO_COTA_FUNDO} 

Preencher numero do codigo da carteira "${NU_COD_CART_FUNDO}"
    Input Text    ${FUNDO_INPUT_NU_COD_CART}      ${NU_COD_CART_FUNDO}

Adicionar tipo cota
    Click Element    ${FUNDO_BT_ADC_TP_COD_CART}

Submeter ao formulario Aba Ativos
    Wait Until Page Contains Element    ${FUNDO_ABA_ATIVOS} 
    Click Element    ${FUNDO_ABA_ATIVOS} 