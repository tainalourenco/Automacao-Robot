*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário Dados Cadastrais


                                            #Mapping
*** Variables ***
${FUNDO_INPUT_COD_ISIN}                     id=form:codigoISIN
${FUNDO_INPUT_COD_ANBID}                    id=form:codigoAnbid    
${FUNDO_INPUT_DT_INI_PROCES}                id=form:inicioProcessamentoInputDate
${FUNDO_TIPO_DIAS}                          id=form:tipoContagemDias:0           
${FUNDO_TIPO}                               id=form:tipoFundo
${FUNDO_OPCAO}                              id=form:aberto:0    
${FUNDO_SITUACAO}                           id=form:situacaoAtual    
${FUNDO_NIVEL_RISCO}                        id=form:nivelRisco
${FUNDO_STATUS_PROCES}                      id=form:statusProcessamento
${FUNDO_LAYOUT_AQUISACAO}                   id=form:layoutAquisicao 
${FUNDO_LAYOUT_OCORRENCIA}                  id=form:layoutOcorrencia
${FUNDO_ABA_DADOS_ADC}                      xpath=//*[contains(text(), 'Dados Adicionais')]



                                             #Action
*** Keywords ***
Preencher código isin do fundo "${FUNDO_COD_ISIN}"
    Input Text    ${FUNDO_INPUT_COD_ISIN}    ${FUNDO_COD_ISIN}

Prrencher código anbid do fundo "${FUNDO_COD_ANBID}" 
    Input Text    ${FUNDO_INPUT_COD_ANBID}    ${FUNDO_COD_ANBID}

Preencher data inicio do processamento do fundo "${FUNDO_DT_INI_PROCES}" 
    Input Text    ${FUNDO_INPUT_DT_INI_PROCES}    ${FUNDO_DT_INI_PROCES}

Selecionar tipo de dias do fundo 
    Click Element    ${FUNDO_TIPO_DIAS}  

Selecionar tipo do fundo "${SELECT_TP_FUNDO}"
    Select From List By Value    ${FUNDO_TIPO}     ${SELECT_TP_FUNDO} 

Selecionar opção do fundo
    Click Button    ${FUNDO_OPCAO} 

Selecionar situação do fundo "${SELECT_SITUACAO_FUNDO}"
    Select From List By Value    ${FUNDO_SITUACAO}     ${SELECT_SITUACAO_FUNDO} 
    
Selecionar nível de risco do fundo "${SELECT_NIVEL_RISCO_FUNDO}"
    Select From List By Value    ${FUNDO_NIVEL_RISCO}     ${SELECT_NIVEL_RISCO_FUNDO} 

Selecionar status do processamento do fundo "${SELECT_STATUS_PROCES_FUNDO}"
    Select From List By Value    ${FUNDO_STATUS_PROCES}     ${SELECT_STATUS_PROCES_FUNDO} 

Selecionar layout de aquisicao do fundo "${SELECT_LAYOUT_AQUIS_FUNDO}"
    Select From List By Value    ${FUNDO_LAYOUT_AQUISACAO}     ${SELECT_LAYOUT_AQUIS_FUNDO} 

Selecionar layout de ocorrência do fundo "${SELECT_LAYOUT_OCOR_FUNDO}"
    Select From List By Value    ${FUNDO_LAYOUT_OCORRENCIA}     ${SELECT_LAYOUT_OCOR_FUNDO} 

Submeter formumario aba Dados Acionais   
    Click Element    ${FUNDO_ABA_DADOS_ADC}  
