*** Settings ***
Documentation    Mapping e Action formulário de cadastro do cedente 
Library    SeleniumLibrary


*** Variables ***
${CEDENTE_FUNDO}                        id=form:fundo
${CEDENTE_INPUT_NOME}                   id=form:nome   
${CEDENTE_TP_PESS_JUR}                  id=form:tipoPessoa:1
${CEDENTE_TP_PESS_FIS}                  id=form:tipoPessoa:0
${CEDENTE_INPUT_NU_CNPJ}                id=form:cpfCnpj
${CEDENTE_INSCR_ESTAD_ISE}              id=form:tipoInscricaoEstadualIsento:1
${CEDENTE_INSCR_ESTAD_ATV}              id=form:tipoInscricaoEstadualIsento:0
${CEDENTE_RAMO_ATIV}                    id=form:ramoAtiviade
${CEDENTE_INPUT_EMAIL}                  id=form:email
${CEDENTE_PORTE}                        id=form:porte
${CEDENTE_TP_SOC}                       id=form:tipoSociedade
${CEDENTE_CLASS_RISCO}                  id=form:classRisco
${CEDENTE_INPUT_INIC_REL}               id=form:iniRelacInputDate
${CEDENTE_AUT}                          id=form:autorizacao:1
${CEDENTE_INPUT_ENDER}                  id=form:logradouro
${CEDENTE_INPUT_NU_ENDER}               id=form:numero
${CEDENTE_INPUT_NU_CEP}                 id=form:cep
${CEDENTE_INPUT_BAIRRO}                 id=form:bairro
${CEDENTE_INPUT_CIDADE}                 id=form:cidade
${CEDENTE_UF}                           id=form:estado 

${CEDENTE_BANCO_CONTA}                  id=form:banco 
${CEDENTE_INPUT_AG}                     id=form:agencia
${CEDENTE_INPUT_DIG_AG}                 id=form:digitoAgencia
${CEDENTE_INPUT_CONTA}                  id=form:conta
${CEDENTE_INPUT_DIG_CONTA}              id=form:digitoConta
${CEDENTE_INPUT_DESC_CONTA}             id=form:descricao
${CEDENTE_CONTA_ATIVA}                  id=form:ativado:1
${CEDENTE_CONTA_PADRAO}                 id=form:padrao:1
${CEDENTE_ADC_CONTA}                    id=form:adicionarContaCorrente

${CEDENTE_INPUT_NM_REPRES}              id=form:representanteNome
${CEDENTE_INPUT_EMAIL_REPRES}           id=form:emailRepresentante
${CEDENTE_TP_PESS_JUR_REPRES}           id=form:representanteTipoPessoa:1
${CEDENTE_TP_PESS_FIS_REPRES}           id=form:representanteTipoPessoa:0
${CEDENTE_INPUT_CNPJ_REPRES}            id=form:representanteCnpj
${CEDENTE_INPUT_CPF_REPRES}             id=form:representanteCpf
${CEDENTE_ADC_REPRES}                   id=form:adicionarRepresentante
${CEDENTE_BT_SALVAR}                    id=form:j_idt705



                                        #Action
*** Keywords ***
Selecionar fundo "${SELECT_FUNDO_CED}"
    Select From List By Label    ${CEDENTE_FUNDO}    ${SELECT_FUNDO_CED} 

Preencher nome do cedente "${CEDENTE_NM}"
    Input Text    ${CEDENTE_INPUT_NOME}    ${CEDENTE_NM}
    
Selecionar tipo de pessoa juridica do cedente
    Click Element    ${CEDENTE_TP_PESS_JUR} 

Preencher cnpj do cedente "${CEDENTE_NU_CNPJ}"
    Input Text    ${CEDENTE_INPUT_NU_CNPJ}    ${CEDENTE_NU_CNPJ}

Selecionar tipo de inscrição estadual isento 
    Click Element    ${CEDENTE_INSCR_ESTAD_ISE} 

Selecionar ramo de atividade do cedente "${SELECT_RAMO_CED}"
    Select From List By Label    ${CEDENTE_RAMO_ATIV}    ${SELECT_RAMO_CED} 

Preencher e-mail do cedente "${CEDENTE_EMAIL}"
    Input Text    ${CEDENTE_INPUT_EMAIL}    ${CEDENTE_EMAIL}

Selecionar porte do cedente "${SELECT_PORTE_CED}"
    Select From List By Label    ${CEDENTE_PORTE}    ${SELECT_PORTE_CED} 

Selecionando tipo sociedade do cedente "${SELECT_TP_SOC_CED}"
    Select From List By Label    ${CEDENTE_TP_SOC}    ${SELECT_TP_SOC_CED} 

Selecionando classe de risco do cedente "${SELECT_CLASS_RISCO_CED}"
    Select From List By Label    ${CEDENTE_CLASS_RISCO}    ${SELECT_CLASS_RISCO_CED}

Preencher inicio de relacionamento do cedente "${CEDENTE_INIC_REL}"
    Input Text    ${CEDENTE_INPUT_INIC_REL}    ${CEDENTE_INIC_REL} 

Selecionar autorização do cedente
    Click Button    ${CEDENTE_AUT}

Preencher endeço do cedente "${CEDENTE_ENDER}"
    Input Text    ${CEDENTE_INPUT_ENDER}    ${CEDENTE_ENDER}

Preencher numero do endereço do cedente "${CEDENTE_NU_ENDER}"
    Input Text    ${CEDENTE_INPUT_NU_ENDER}    ${CEDENTE_NU_ENDER}

Preencher cep do cedente "${CEDENTE_NU_CEP}"
    Input Text    ${CEDENTE_INPUT_NU_CEP}    ${CEDENTE_NU_CEP}

Preencher bairro do cedente "${CEDENTE_BAIRRO}"
    Input Text    ${CEDENTE_INPUT_BAIRRO}    ${CEDENTE_BAIRRO}

Preencher cidade do cedente "${CEDENTE_CIDADE}"
    Input Text    ${CEDENTE_INPUT_CIDADE}    ${CEDENTE_CIDADE}

Selecionar uf do cedente "${SELECT_UF_CED}"
    Select From List By Label    ${CEDENTE_UF}    ${SELECT_UF_CED}


                                            #Action Dados da conta 

Selecionar banco dos dados da conta do cedente "${SELECT_BANCO_CED}"
    Select From List By Label    ${CEDENTE_BANCO_CONTA}    ${SELECT_BANCO_CED}

Preencher nume da agencia do cedente "${CEDENTE_NU_AG}"
    Input Text    ${CEDENTE_INPUT_AG}    ${CEDENTE_NU_AG}

Preencher digito da agencia do cedente "${CEDENTE_DIG_AG}"
    Input Text    ${CEDENTE_INPUT_DIG_AG}    ${CEDENTE_DIG_AG}    

Preencher numero da conta do cedente "${CEDENTE_NU_CONTA}"
    Input Text    ${CEDENTE_INPUT_CONTA}    ${CEDENTE_NU_CONTA}  

Preencher digito da conta do cedente "${CEDENTE_NU_DIG_CONTA}"
    Input Text    ${CEDENTE_INPUT_DIG_CONTA}    ${CEDENTE_NU_DIG_CONTA}  

Preencher descrição da conta do cedente "${CEDENTE_DESC_CONTA}"
    Input Text    ${CEDENTE_INPUT_DESC_CONTA}    ${CEDENTE_DESC_CONTA} 

Selecionar conta ativa
    Click Element    ${CEDENTE_CONTA_ATIVA} 

Selecionar conta como padrão
    Click Element    ${CEDENTE_CONTA_PADRAO}  

Adicionar conta do cedente
    Click Element    ${CEDENTE_ADC_CONTA}
    

                                        #Action Representante
Preencher nome do representante cedente "${CEDENTE_NOME_REPRES}" 
    Input Text    ${CEDENTE_INPUT_NM_REPRES}     ${CEDENTE_NOME_REPRES}

Preencher email do representante cedente "${CEDENTE_EMAIL_REPRES}" 
    Input Text    ${CEDENTE_INPUT_EMAIL_REPRES}     ${CEDENTE_EMAIL_REPRES}

Selecionar tipo de pessoa juridica do representante cedente     
    Click Element    ${CEDENTE_TP_PESS_JUR_REPRES}

Selecionar tipo de pessoa fisica do representante cedente 
    Click Element    ${CEDENTE_TP_PESS_FIS_REPRES}

Preencher cnpj do representante cedente "${CEDENTE_NU_CNPJ_REPRES}" 
    Input Text    ${CEDENTE_INPUT_CNPJ_REPRES}     ${CEDENTE_NU_CNPJ_REPRES} 

Preencher cpf do representante cedente "${CEDENTE_NU_CPF_REPRES}" 
    Input Text     ${CEDENTE_INPUT_CPF_REPRES}     ${CEDENTE_NU_CPF_REPRES} 
   
Adicionar representante do cedente 
    Wait Until Element Is Visible    ${CEDENTE_ADC_REPRES} 
    Click Element    ${CEDENTE_ADC_REPRES} 
    
Submeter formulario de adição do cedente 
    Wait Until Element Is Visible    ${CEDENTE_BT_SALVAR} 
    Click Element    ${CEDENTE_BT_SALVAR}
         









