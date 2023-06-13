*** Settings ***
Library          SeleniumLibrary
Documentation    Mapping e Action Aba Papeis Desempenhados 

*** Variables ***
${ENTIDADE_PAPEIS_ORIG}       id=form:originador
${ENTIDADE_ABA_CONTA}         xpath=//*[contains(text(), 'Conta Corrente Consultoria')]


*** Keywords ***
Selecionar papel originador
    Wait Until Page Contains Element    ${ENTIDADE_PAPEIS_ORIG}
    Click Element    ${ENTIDADE_PAPEIS_ORIG}

Submeter aba Conta Corrente Consultoria  
    Wait Until Page Contains Element    ${ENTIDADE_ABA_CONTA} 
    Click Element    ${ENTIDADE_ABA_CONTA}     