*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formumalário aba Representantes


                                            #Mapping
*** Variables ***
${FUND_INPUT_NM_REPRES}                    id=form:representanteNome                                                                                                             
${FUND_INPUT_EMAIL_REPRES_}                id=form:emailRepresentante
${FUND_TP_PES_JUR_REPRES_}                 id=form:representanteTipoPessoa:1
${FUND_TP_PES_FIS_REPRES_}                 id=form:representanteTipoPessoa:0
${FUND_INPUT_NU_TEL_REPRES_}               id=form:telefoneRepresentante
${FUND_INPUT_NU_CNPJ_REPRES_}              id=form:representanteCnpj
${FUND_INPUT_NU_CPF_REPRES_}               id=form:representanteCpf
${FUNDO_BT_ADC_REPRESENTANTE}              id=form:adicionarRepresentante 
${FUNDO_ABA_LIQUIDACAO}                    id=form:aba10:header:inactive 


*** Keywords ***
Preencher nome representante "${NM_REPRES_}"
    Input Text    ${FUND_INPUT_NM_REPRES}     ${NM_REPRES_} 

Preencher email representante "${EMAIL_REPRES}"  
    Sleep    1
    Input Text    ${FUND_INPUT_EMAIL_REPRES_}    ${EMAIL_REPRES}

Selecionar tipo pessoa juridica do representante 
    Click Element    ${FUND_TP_PES_JUR_REPRES_}  

Selecionar tipo pessoa física do representante 
    Click Element    ${FUND_TP_PES_FIS_REPRES_} 

Preencher numero telefone do representante "${FUNDO_NU_TEL_REPRES}" 
    Input Text    ${FUND_INPUT_NU_TEL_REPRES_}    ${FUNDO_NU_TEL_REPRES}

Preencher numero cnpj do representante "${FUNDO_NU_CNPJ_REPRES}" 
    Input Text    ${FUND_INPUT_NU_CNPJ_REPRES_}    ${FUNDO_NU_CNPJ_REPRES}

Preencher numero do cpf do Representante "${FUNDO_NU_CPF_REPRES}" 
    Input Text    ${FUND_INPUT_NU_CPF_REPRES_}    ${FUNDO_NU_CPF_REPRES}

Adicionar representante do fundo
    Click Element    ${FUNDO_BT_ADC_REPRESENTANTE}

Submeter ao formulario da aba Liquidacao    
    Click Element     ${FUNDO_ABA_LIQUIDACAO}   