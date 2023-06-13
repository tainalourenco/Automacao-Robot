*** Settings ***
Library          SeleniumLibrary
Documentation    Mapping e Action Aba Partes Relacionadas


*** Variables ***
${ENTIDADE_INPUT_NOME_PARTES_RE}                 id=form:nomeParteRelacionada
${ENTIDADE_TP_PESSOA_JURI_PARTES_RE}             id=form:tipoParteRelacionada:1
${ENTIDADE_TP_PESSOA_FISICA_PARTES_RE}           id=form:tipoParteRelacionada:0
${ENTIDADE_INPUT_CNPJ_PARTES_RE}                 id=form:cnpjParteRelacionada
${ENTIDADE_INPUT_CPF_PARTES_RE}                  id=form:cpfParteRelacionada
${ENTIDADE_BT_ADC_PARTES_RE}                     id=form:adicionarParteRelacionada
${ENTIDADE_BT_SALVAR}                            Salvar


*** Keywords ***
Preencher nome da parte relacionada da entidade "${ENTIDADE_NOME_PARTES_RE}"
    Input Text    ${ENTIDADE_INPUT_NOME_PARTES_RE}    ${ENTIDADE_NOME_PARTES_RE}

Selecionar tipo de pessoa juridica das partes relacionada  
    Click Element    ${ENTIDADE_TP_PESSOA_JURI_PARTES_RE} 

Preencher numero do cnpj da parte relacionada "${ENTIDADE_NU_CNPJ_PARTES_RE}"
    Input Text    ${ENTIDADE_INPUT_CNPJ_PARTES_RE}    ${ENTIDADE_NU_CNPJ_PARTES_RE}

Adicionar Partes Relacionadas 
    Click Element    ${ENTIDADE_BT_ADC_PARTES_RE} 

Submter formulario de adição da entidade
    Click Link    ${ENTIDADE_BT_SALVAR}      