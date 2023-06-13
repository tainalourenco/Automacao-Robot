*** Settings ***
Library          SeleniumLibrary
Documentation    Mapping e Action Aba Representantes


*** Variables ***
${ENTIDADE_INPUT_NOME_REPRES}                 id=form:representanteNome
${ENTIDADE_INPUT_EMAIL_REPRES}                id=form:emailRepresentante
${ENTIDADE_TP_PESSOA_JURI_REPRES}             id=form:representanteTipoPessoa:1
${ENTIDADE_TP_PESSOA_FISICA_REPRES}           id=form:representanteTipoPessoa:0
${ENTIDADE_INPUT_CNPJ_REPRES}                 id=form:representanteCnpj
${ENTIDADE_INPUT_CPF_REPRES}                  id=form:representanteCpf
${ENTIDADE_INPUT_TEL_REPRES}                  id=form:telefoneRepresentante
${ENTIDADE_BT_ADC_REPRES}                     id=form:adicionarRepresentante
${ENTIDADE_ABA_PARTES_REL}                    xpath=//*[contains(text(), 'Partes Relacionadas')]


*** Keywords ***
Preencher nome do representante da entidade "${NOME_REPRES_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_NOME_REPRES}    ${NOME_REPRES_ENTIDADE}

Preencher email do representante "${EMAIL_REPRES_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_EMAIL_REPRES}    ${EMAIL_REPRES_ENTIDADE}  

Selecionar tipo de pessoa juridica representante  
    Click Element    ${ENTIDADE_TP_PESSOA_JURI_REPRES} 

Preencher numero do cnpj do representante "${ENTIDADE_NUMERO_CNPJ_REPRES}"
    Input Text    ${ENTIDADE_INPUT_CNPJ_REPRES}    ${ENTIDADE_NUMERO_CNPJ_REPRES}

Preencher numero do teledone do representante "${ENTIDADE_NUMERO_TEL_REPRES}"
    Input Text    ${ENTIDADE_INPUT_TEL_REPRES}    ${ENTIDADE_NUMERO_TEL_REPRES}

Adicionar representante 
    Click Element    ${ENTIDADE_BT_ADC_REPRES} 

 Submeter aba Partes Relacionadas 
    Wait Until Page Contains Element    ${ENTIDADE_ABA_PARTES_REL} 
    Click Element    ${ENTIDADE_ABA_PARTES_REL}       
    