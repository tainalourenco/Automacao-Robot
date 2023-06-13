*** Settings ***
Library        SeleniumLibrary
Documentation    Mapping e Action Cadastro PDD

                                                             #Mapping
*** Variables ***


${PDD_BT_NOVO}             Novo                           
${PDD_INPUT_NOME}          id=form:nomePdd 
${INPUT_PDD}               id=form:pdd  
${PDD_BT_CONSULTAR}        Consultar
${PDD_BT_EDITAR}           xpath=//img[@title='Editar']
${PDD_BT_EXCLUIR}          xpath=//img[@title='Excluir']
${FAIXA_UNICA}             id=form:pddFaixaUnica
${PDD_BT_SALVAR}           Salvar 


                                                            #Action
*** Keywords ***   
Clicar no botão +Novo
    Click Link    ${PDD_BT_NOVO}
    
Digitar nome "${NOME_PDD}"
    Input Text  ${PDD_INPUT_NOME}  ${NOME_PDD}

Selecionar Faixa única 
    Click Element    ${FAIXA_UNICA}

Clicar em Salvar
    Click Link    ${PDD_BT_SALVAR}

Digitar PDD cadastrado "${PDD}"
    Input Text    ${INPUT_PDD}    ${PDD}    

Consultar PDD
    Click Link    ${PDD_BT_CONSULTAR} 

Clicar em Editar   
    Sleep    1
    Click Element  ${PDD_BT_EDITAR}

Clicar em excluir    
    Sleep    1
    Click Element  ${PDD_BT_EXCLUIR}  

Aceitar exclusão   
    Handle Alert  
   
Conferir mensagem de pdd cadastrado ou alterado "${MENSAGEM_SUCESSO}"
    Wait Until Page Contains    ${MENSAGEM_SUCESSO}  

Conferir mensagem de pdd ja cadastrado "${MENSAGEM_PDD_JA_CADASTRADO}"
    Wait Until Page Contains  ${MENSAGEM_PDD_JA_CADASTRADO}

Conferir mensagem de exlusão do pdd "${MENSAGEM_EXCLUSAO}"   
    Wait Until Page Contains  ${MENSAGEM_EXCLUSAO} 

Conferir campo obrigatório "${MENSAGEM_DADOS_OBRIGATORIOS}"
    Wait Until Page Contains  ${MENSAGEM_DADOS_OBRIGATORIOS} 
