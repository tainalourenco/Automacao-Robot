
*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário Dados Adicionais


                                            #Mapping
*** Variables ***
${FUNDO_INPUT_NOME}                         id=form:nomeFundo
${FUNDO_INPUT_NU_CNPJ}                      id=form:cnpjFundo    
${FUNDO_AG_CLASS_RISCO}                     id=form:agenciaRating
${FUNDO_NM_ADM}                             id=form:nomeAdministrador
${FUNDO_AGENTE_ESC}                         id=form:agenteEscriturador
${FUNDO_NM_CUST}                            id=form:nomeCustodiante
${FUNDO_CONTR_ATIVO}                        id=form:nomeControladorAtivo  
${FUNDO_NM_GESTOR}                          id=form:nomeGestor    
${FUNDO_NM_CONTR_PASS}                      id=form:nomeControladorPassivo
${FUNDO_NM_AUDITOR}                         id=form:nomeAuditor
${FUNDO_NM_CONSULTORIA}                     id=form:nomeConsultoria   
${FUNDO_INPUT_PRZ_RECP_CHA_NFE}             id=form:prazoRecepcaoChaveNfe
${FUNDO_INPUT_PRZ_RECP_LASTRO}              id=form:prazoRecepcaoLastro 
${FUNDO_N_CONS_POS_FIX}                     id=form:considerarPosFixado:1
${FUNDO_OP_PL_ZERADO}                       id=form:operaPlZerado:0
${FUNDO_COD_COBRANCA}                       id=form:nomeBanco
${FUNDO_INPUT_COD_COBRANCA}                 id=form:codigoCobranca
${FUNDO_INPUT_DT_INI_REL_COBRANCA}          id=form:dataInicioRelacionamentoCobrancaInputDate   
${FUNDO_BT_ADC_COBRANCA}                    id=form:j_idt496
${FUNDO_ABA_PERFIS_PDD}                     xpath=//*[contains(text(), 'Perfis PDD')]



                                             #Action
*** Keywords ***

Preencher nome do fundo "${NOME_FUNDO}" 
    Input Text    ${FUNDO_INPUT_NOME}    ${NOME_FUNDO}

Preencher numero do cnpj do fundo "${NU_CNPJ_FUNDO}" 
    Input Text    ${FUNDO_INPUT_NU_CNPJ}    ${NU_CNPJ_FUNDO}

Selecionar agencia classificação de risco "${SELECT_AG_CLASS_RISCO_FUNDO}"
    Select From List By Label    ${FUNDO_AG_CLASS_RISCO}     ${SELECT_AG_CLASS_RISCO_FUNDO}

Selecionar nome do administrador "${SELECT_NM_ADM_FUNDO}"
    Select From List By Label    ${FUNDO_NM_ADM}     ${SELECT_NM_ADM_FUNDO}

Selecionar agente escriturador "${SELECT_AGENTE_ESC_FUNDO}"
    Select From List By Label    ${FUNDO_AGENTE_ESC}     ${SELECT_AGENTE_ESC_FUNDO}

Selecionar nome do custodiante "${SELECT_NM_CUST_FUNDO}"
    Select From List By Label    ${FUNDO_NM_CUST}     ${SELECT_NM_CUST_FUNDO}

Selecionar do controlador ativo "${SELECT_CONTR_ATIVO_FUNDO}"
    Select From List By Label    ${FUNDO_CONTR_ATIVO}     ${SELECT_CONTR_ATIVO_FUNDO}

Selecionar nome do gestor "${SELECT_NM_GESTOR_FUNDO}"
    Select From List By Label    ${FUNDO_NM_GESTOR}     ${SELECT_NM_GESTOR_FUNDO}

Selecionar nome do controlador passivo "${SELECT_NM_CONTR_PASS_FUNDO}"
    Select From List By Label    ${FUNDO_NM_CONTR_PASS}     ${SELECT_NM_CONTR_PASS_FUNDO}

Selecionar nome do auditor independente "${SELECT_NM_AUD_FUNDO}"
    Select From List By Label    ${FUNDO_NM_AUDITOR}     ${SELECT_NM_AUD_FUNDO}

Selecionar nome da consultoria "${SELECT_NM_CONSUL_FUNDO}"
    Select From List By Label    ${FUNDO_NM_CONSULTORIA}     ${SELECT_NM_CONSUL_FUNDO}

Preencher prazo recepcao da chave nfe "${PRZ_RECP_CHA_NFE_FUNDO}" 
    Input Text    ${FUNDO_INPUT_PRZ_RECP_CHA_NFE}    ${PRZ_RECP_CHA_NFE_FUNDO}
    
Preencher prazo recepcao do lastro "${PRZ_RECP_LASTRO_FUNDO}" 
    Input Text    ${FUNDO_INPUT_PRZ_RECP_LASTRO}    ${PRZ_RECP_LASTRO_FUNDO}

Seleciona nao considerar pos fixado
    Click Element    ${FUNDO_N_CONS_POS_FIX}

Seleciona opera com pL zerado
    Click Element    ${FUNDO_OP_PL_ZERADO}  

Selecionar nome do banco de cobrança "${SELECT_COD_COBRANCA_FUNDO}" 
    Select From List By Label     ${FUNDO_COD_COBRANCA}   ${SELECT_COD_COBRANCA_FUNDO}

Preencher código do banco de cobrança "${COD_COBRANCA_FUNDO}" 
    Input Text    ${FUNDO_INPUT_COD_COBRANCA}    ${COD_COBRANCA_FUNDO}

Preencher Data Inicio Relacionamento Cobranca "${DT_INI_REL_COBRANCA_FUNDO}" 
    Input Text    ${FUNDO_INPUT_DT_INI_REL_COBRANCA}    ${DT_INI_REL_COBRANCA_FUNDO}
    
Adicionar Cobranca
    Click Element    ${FUNDO_BT_ADC_COBRANCA}

Submeter ao formulario Aba Perfis PDD Fundo  
    Wait Until Page Contains Element    ${FUNDO_ABA_PERFIS_PDD}
    Click Element    ${FUNDO_ABA_PERFIS_PDD}  

