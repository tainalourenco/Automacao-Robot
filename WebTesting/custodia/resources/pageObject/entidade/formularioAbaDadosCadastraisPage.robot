*** Settings ***
Library          SeleniumLibrary
Documentation    Mapping e Action Aba Dados Cadastrais 

*** Variables ***
${ENTIDADE_INPUT_NOME}             id=form:nome
${ENTIDADE_TP_PESSOA_JURI}         id=form:tipoPessoa:1 
${ENTIDADE_TP_PESSOA_FISICA}       id=form:tipoPessoa:0
${ENTIDADE_INPUT_NU_CNPJ}          id=form:cnpj
${ENTIDADE_INPUT_NU_CPF}           id=form:cpf 
${ENTIDADE_INPUT_EMAIL}            id=form:email
${ENTIDADE_INPUT_ENDERECO}         id=form:logradouro
${ENTIDADE_INPUT_NUMERO_END}       id=form:numero
${ENTIDADE_ESTADO}                 id=form:estado 
${ENTIDADE_ABA_PAPEIS}             xpath=//*[contains(text(), 'Papéis Desempenhados')]


*** Keywords ***
Preencher razão social "${NOME_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_NOME}    ${NOME_ENTIDADE}
    
Selecionar tipo de pessoa juridica    
    Click Element    ${ENTIDADE_TP_PESSOA_JURI} 

Preencher numero do cnpj da entidade "${NUMERO_CNPJ_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_NU_CNPJ}    ${NUMERO_CNPJ_ENTIDADE}

Preencher email "${EMAIL_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_EMAIL}    ${EMAIL_ENTIDADE}
    
Preencher endereço "${ENDERECO_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_ENDERECO}    ${ENDERECO_ENTIDADE}

Preencher numero do endereço "${NUMERO_END_ENTIDADE}"
    Input Text    ${ENTIDADE_INPUT_NUMERO_END}    ${NUMERO_END_ENTIDADE}

Selecionar o estado "${SELECT_ESTADO_ENTIDADE}"
    Select From List By Value    ${ENTIDADE_ESTADO}     ${SELECT_ESTADO_ENTIDADE} 

Submeter aba Papeis Desempenhados
    Wait Until Page Contains Element    ${ENTIDADE_ABA_PAPEIS} 
    Click Element    ${ENTIDADE_ABA_PAPEIS}     