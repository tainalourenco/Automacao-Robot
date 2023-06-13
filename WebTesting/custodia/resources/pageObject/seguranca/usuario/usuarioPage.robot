*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action submenu Usuario, acesso ao formulário de adição e validações das mensagens de retorno

                                            #Mapping

*** Variables ***
${MENU_USER}                            id=menuForm:j_idt88
${USER_BT_NOVO}                         link=Novo
${USER_INPUT_PESQ_LOGIN}                id=form:login
${USER_BT_PESQ}                         Pesquisar
${USER_BT_EXCLUIR}                      id=form:pagedDataTable:0:j_idt263


*** Keywords ***
Submeter segundo menu Usuario
    Wait Until Element Is Visible    ${MENU_USER} 
    Click Element    ${MENU_USER} 

Clicar no botão +Novo do cadastro do usuario
    Click Link    ${USER_BT_NOVO} 

Preencher login da pesquisa "${USER_PESQ_LOGIN}"
    Input Text    ${USER_INPUT_PESQ_LOGIN}    ${USER_PESQ_LOGIN}

Consultar usuario
    Click Link    ${USER_BT_PESQ} 

Clicar em excluir usuario    
    Wait Until Element Is Visible    ${USER_BT_EXCLUIR}
    Click Element    ${USER_BT_EXCLUIR}

Aceitar inativação do usuario
    Handle Alert

Conferir mensagem de cadastro realizado com sucesso do usuario "${USER_MSG_SUCESSO}"
    Wait Until Page Contains    ${USER_MSG_SUCESSO}

Conferir mensagem de usuario não cadastrado com erro "${USER_MSG_ERRO}"
    Wait Until Page Contains    ${USER_MSG_ERRO}    

Conferir mensagem de exclusão do usuario "${USER_MSG_EXCLUSAO}"
    Wait Until Page Contains    ${USER_MSG_EXCLUSAO} 

