*** Settings ***
Library    SeleniumLibrary
Documentation    Mapping e Action Cadastro Perfil Enquadramento

                                                #Mapping
*** Variables ***
${PERFIL_ENQ_BT_NOVO}                     Novo  
${PERFIL_ENQ_INPUT_NOME}                  id=form:nome 
${PERFIL_ENQ_INPUT_DESC}                  id=form:descricao 
${SELECAO_REGRA}                          id=form:regrasItem0
${PERFIL_ENQ_BT_SALVAR}                   Salvar
${PERFIL_ENQ_PESQ_INPUT_NOME}             id=form:nome
${PERFIL_ENQ_BT_PESQ}                     xpath=//a[contains(.,'Pesquisar')]
${PERFIL_ENQ_BT_EXCLUIR}                  xpath=//img[contains(@title,'Excluir')]


                                
                                                #Action
*** Keywords ***    
Clicar no botão +Novo do perfil
    Click Link    ${PERFIL_ENQ_BT_NOVO}                            
   
Digitar nome do perfil "${NOME_PERFIL}"
    Wait Until Element Is Visible    ${PERFIL_ENQ_INPUT_NOME}
    Input Text  ${PERFIL_ENQ_INPUT_NOME}  ${NOME_PERFIL}

Digitar descrição do perfil "${DESCRICAO_PERFIL}"
    Wait Until Element Is Visible     ${PERFIL_ENQ_INPUT_DESC}
    Input Text  ${PERFIL_ENQ_INPUT_DESC}  ${DESCRICAO_PERFIL}
 
Selecionar regra ao perfil
    Wait Until Element Is Visible    ${SELECAO_REGRA}
    Double Click Element    ${SELECAO_REGRA} 

Preencher nome do perfil de enquadramento a ser excluído "${PERFIL_ENQ_PESQ_NOME}"
    Wait Until Element Is Visible     ${PERFIL_ENQ_PESQ_INPUT_NOME}
    Input Text  ${PERFIL_ENQ_PESQ_INPUT_NOME}  ${PERFIL_ENQ_PESQ_NOME} 

Consultar perfil de enquadramento    
    Click Element    ${PERFIL_ENQ_BT_PESQ} 

Clicar em excluir perfil de enquadramento 
    Click Element    ${PERFIL_ENQ_BT_EXCLUIR} 

Clicar em Salvar Perfil   
    Click Link   ${PERFIL_ENQ_BT_SALVAR}

Aceitar cadastro 
    Handle Alert  

Conferir mensagem de perfil cadastrado "${MENSAGEM_SUCESSO}" 
    Wait Until Page Contains    ${MENSAGEM_SUCESSO}  


Conferir mensagem do perfil não cadastrada com erro "${REGRA_MSG_ERRO}"  
    Wait Until Page Contains    ${REGRA_MSG_ERRO}  

Conferir mensagem de exlusão do perfil "${REGRA_MSG_EXCLUSAO}"   
    Wait Until Page Contains  ${REGRA_MSG_EXCLUSAO}      




