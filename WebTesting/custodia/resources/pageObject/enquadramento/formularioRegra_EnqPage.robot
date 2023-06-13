*** Settings ***
Library    SeleniumLibrary
Documentation    Mapping e Action Cadastro Regra Enquadramento

                                                    #Mapping
*** Variables ***
${BT_NOVO}                    Novo  
${REGRAS_SACADO}              id=form:j_idt304:header
${NAO_PERMITIDO}              id=form:j_idt308
${INPUT_NOME_REGRA}           id=form:nome  
${INPUT_DESCRICAO_REGRA}      id=form:descricao
${TIPO_PESSOA}                id=form:tipoPessoa
${INPUT_NU_CPF_CNPJ}          id=form:cpfOrCnpj         
${BT_ADICIONAR}               xpath=//a[contains(.,'Adicionar')] 
${BT_SALVAR_REGRA}            id=form:btnGravar
${REGRA_PESQ_INPUT_NOME}      name=form:j_idt236 
${REGRA_BT_PES}               xpath=//a[contains(.,'Pesquisar')] 
${REGRA_BT_EXCLUIR}           xpath=//img[contains(@title,'Excluir')]



                                                    #Action
*** Keywords ***
Clicar no botão +Novo da regra
    Click Link    ${BT_NOVO}                            
   
Clicar em Regras aplicadas por sacado
    Click Element    ${REGRAS_SACADO}

Clicar em "${REGRA_NAO_PERMITIDA}"
   Wait Until Element Contains    ${NAO_PERMITIDO}    ${REGRA_NAO_PERMITIDA}
   Click Element    ${NAO_PERMITIDO} 

Digitar nome da regra "${NOME_REGRA}"
    Wait Until Page Contains Element    ${INPUT_NOME_REGRA}
    Input Text  ${INPUT_NOME_REGRA}  ${NOME_REGRA}

Digitar Descrição da regra "${DESCRICAO_REGRA}"
    Wait Until Page Contains Element    ${INPUT_DESCRICAO_REGRA}
    Input Text  ${INPUT_DESCRICAO_REGRA}  ${DESCRICAO_REGRA}

Selecionar Tipo de Pessoa "${SELECT_TIPO_PESSOA}"
    Select From List By Value    ${TIPO_PESSOA}    ${SELECT_TIPO_PESSOA} 

Digitar numero do CNPJ "${NUMERO_CPF_CNPJ_REGRA}" 
    Wait Until Page Contains Element    ${INPUT_NU_CPF_CNPJ}
    Input Text  ${INPUT_NU_CPF_CNPJ}  ${NUMERO_CPF_CNPJ_REGRA}
 
Preencher nome da regra a ser excluída "${REGRA_PESQ_NOME}" 
    Wait Until Page Contains Element    ${REGRA_PESQ_INPUT_NOME}
    Input Text  ${REGRA_PESQ_INPUT_NOME}  ${REGRA_PESQ_NOME}  

Consultar regra
    Click Element    ${REGRA_BT_PES} 

Clicar em excluir regra 
    Click Element    ${REGRA_BT_EXCLUIR}     

Aceitar exclusão da regra
    Handle Alert           

Clicar em Adicionar
    Click Link    ${BT_ADICIONAR} 

Submeter formulario da regra   
    Wait Until Element Is Visible  ${BT_SALVAR_REGRA}
    Click Element   ${BT_SALVAR_REGRA}

Conferir mensagem de regra cadastrada "${REGRA_ENQ_MSG_SUCESSO}" 
    Wait Until Page Contains    ${REGRA_ENQ_MSG_SUCESSO} 

Conferir mensagem de regra não cadastrada com erro "${REGRA_MSG_ERRO}"  
    Wait Until Page Contains    ${REGRA_MSG_ERRO}  

Conferir mensagem de exlusão da regra "${REGRA_MSG_EXCLUSAO}"   
    Wait Until Page Contains  ${REGRA_MSG_EXCLUSAO}  
 



