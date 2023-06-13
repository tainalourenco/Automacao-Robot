*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action submenu banco, entrar no formulário de adição e conferência das mensagens de retorno

                                            #Mapping
*** Variables ***
${SUBMENU_BANCO}                xpath=//div[@id='menuForm:j_idt20'] 
${BANCO_BT_NOVO}                xpath=//a[contains(@title,'Novo')] 


                                             #Action
*** Keywords ***
 Sumbeter segundo menu Banco 
    Wait Until Element Is Visible   ${SUBMENU_BANCO}
    Click Element  ${SUBMENU_BANCO}

Clicar no botão +Novo
    Click Link    ${BANCO_BT_NOVO}

Conferir mensagem de banco cadastrado com sucesso "${BANCO_MENSAGEM_SUCESSO}"
    Wait Until Page Contains    ${BANCO_MENSAGEM_SUCESSO}    

Conferir mensagem de banco não cadastrado "${BANCO_MENSAGEM_ERRO}"
    Wait Until Page Contains    ${BANCO_MENSAGEM_ERRO}

Conferir mensagem de banco não cadastrado sem dados obrigatórios "${MENSAGEM_DADOS_OBR_BANCO}"
     Wait Until Page Contains    ${MENSAGEM_DADOS_OBR_BANCO}

     