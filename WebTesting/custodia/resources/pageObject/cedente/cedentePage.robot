*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action submenu cedente, acesso ao formulário de adição e validações das mensagens de retorno

                                            #Mapping

*** Variables ***
${MENU_CEDENTE}                            xpath=//*[contains(text(), 'Cedente')]
${SEG_MENU_CEDENTE}                        id=menuForm:menuCedente
${CEDENTE_BT_NOVO}                         Novo
${CEDENTE_INPUT_PESQ_NU_CNPJ}              id=form:cpfCnpj
${CEDENTE_FUNDO_PESQ}                      id=form:fundo
${CEDENTE_BT_PESQ}                         Pesquisar
${CEDENTE_BT_EXCLUIR}                      id=form:pagedDataTable:0:j_idt278

*** Keywords ***
Submeter primeiro menu Cedente
    Wait Until Element Is Visible   ${MENU_CEDENTE}
    Click Element  ${MENU_CEDENTE}

Submeter segundo menu Cedente
    Wait Until Element Is Visible   ${SEG_MENU_CEDENTE}
    Click Element  ${SEG_MENU_CEDENTE}

Clicar no botão +Novo do cadastro de cedente
    Click Link    ${CEDENTE_BT_NOVO}

Preencher cnpj do cedente a ser excluido "${CEDENTE_PESQ_NU_CNPJ}"
    Input Text    ${CEDENTE_INPUT_PESQ_NU_CNPJ}    ${CEDENTE_PESQ_NU_CNPJ}

Selecionar fundo tela de consulta cedente "${SELECT_FUNDO_CONS_CED}"
    Select From List By Label   ${CEDENTE_FUNDO_PESQ}    ${SELECT_FUNDO_CONS_CED}     

Consultar cedente 
    Click Link    ${CEDENTE_BT_PESQ} 

Clicar em excluir cedente
    Wait Until Element Is Visible  ${CEDENTE_BT_EXCLUIR} 
    Click Element  ${CEDENTE_BT_EXCLUIR}  

Aceitar exclusão do cedente  
    Handle Alert          

Conferir mensagem de cadastro realizado com sucesso do cedente "${CEDENTE_MSG_SUCESSO}"  
    Wait Until Page Contains    ${CEDENTE_MSG_SUCESSO}

Conferir mensagem de cadastrao nao realizado do cedente "${CEDENTE_MSG_ERRO}"  
    Wait Until Page Contains    ${CEDENTE_MSG_ERRO}  

Conferir mensagem de exlusão do cedente "${CEDENTE_MSG_EXCLUSAO}"   
    Wait Until Page Contains  ${CEDENTE_MSG_EXCLUSAO}     


    



