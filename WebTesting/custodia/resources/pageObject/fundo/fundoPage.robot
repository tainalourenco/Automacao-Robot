*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action submenus fundo, entrar no formulário de adição e conferência das mensagens de retorno

                                            #Mapping
*** Variables ***
${PRIM_MENU_FUNDO}                id=menuForm:j_idt23
${SEG_MENU_FUNDO}                 id=menuForm:fundo
${FUNDO_BT_NOVO}                  xpath=//a[contains(@title,'Novo')] 


                                             #Action
*** Keywords ***
Sumbeter primeiro menu Fundo 
    Wait Until Element Is Visible    ${PRIM_MENU_FUNDO}
    Click Element    ${PRIM_MENU_FUNDO} 

Sumbeter segundo menu Fundo 
    Wait Until Element Is Visible   ${SEG_MENU_FUNDO}
    Click Element    ${SEG_MENU_FUNDO}

Clicar no botão +Novo do cadastro do fundo
    Click Link    ${FUNDO_BT_NOVO}    

Conferir mensagem de cadastro realizado com sucesso do fundo "${FUNDO_MSG_SUCESSO}"
    Wait Until Page Contains    ${FUNDO_MSG_SUCESSO}

Conferir mensagem de fundo não cadastrado com erro "${FUNDO_MSG_ERRO}"
    Wait Until Page Contains    ${FUNDO_MSG_ERRO}    

