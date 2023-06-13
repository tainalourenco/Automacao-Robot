*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action Cadastro do Banco   

                                            #Mapping
*** Variables ***
${BANCO_INPUT_NOME}             id=form:nome  
${BANCO_INPUT_DESC}             id=form:descricao
${BANCO_INPUT_NUMERO}           id=form:numero
${BANCO_ATIVAR}                 id=form:registroAtivo:0 
${BANCO_BT_SALVAR}              Salvar  


                                             #Action
*** Keywords ***
Preencher nome do banco "${NOME_BANCO}" 
    Input Text    ${BANCO_INPUT_NOME}    ${NOME_BANCO}

Preencher descrição do banco "${DESCRICAO_BANCO}" 
    Input Text    ${BANCO_INPUT_DESC}    ${DESCRICAO_BANCO}

Preencher numero do banco "${NUMERO_BANCO}" 
    Input Text    ${BANCO_INPUT_NUMERO}    ${NUMERO_BANCO}

Ativar banco
    Click Element    ${BANCO_ATIVAR}

Submter formulario de adição do banco
    Click Link    ${BANCO_BT_SALVAR}
