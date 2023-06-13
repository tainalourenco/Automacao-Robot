*** Settings ***
Library        SeleniumLibrary
Documentation    Mapping e Action página Entidade e entrada no formulário de adição

*** Variables ***
${SUB_MENU_ENTIDADE}               xpath=(//span[@class='rf-ddm-itm-lbl '][contains(.,'Entidades')])[1]  
${ENTIDADE_BT_NOVO}                xpath=//a[contains(@title,'Novo')]  
${ENTIDADE_INPUT_PESQ_DOC}         id=form:doc
${ENTIDADE_BT_PESQ}                xpath=//a[contains(@title,'Pesquisar')]
${ENTIDADE_BT_EXCLUIR}             id=form:pagedDataTable:0:j_idt263


*** Keywords ***
Submeter segundo menu Entidade
    Wait Until Element Is Visible    ${SUB_MENU_ENTIDADE}  
    Click Element    ${SUB_MENU_ENTIDADE}  

Clicar no botão +Novo do cadastro entidade
    Click Link    ${ENTIDADE_BT_NOVO}

Preencher cnpj da entidade a ser excluido "${ENTIDADE_PESQ_DOC}"
    Input Text    ${ENTIDADE_INPUT_PESQ_DOC}    ${ENTIDADE_PESQ_DOC}

Consultar entidade  
     Click Link    ${ENTIDADE_BT_PESQ} 

Clicar em excluir entidade
    Wait Until Element Is Visible  ${ENTIDADE_BT_EXCLUIR} 
    Click Element    ${ENTIDADE_BT_EXCLUIR} 

Aceitar exclusão da entidade 
    Handle Alert  

Conferir mensagem de entidade cadastrada com sucesso "${ENTIDADE_MSG_SUCESSO}"
    Wait Until Page Contains    ${ENTIDADE_MSG_SUCESSO}  

Conferir mensagem de entidade nao cadastrada com erro "${ENTIDADE_MSG_ERRO}"  
    Wait Until Page Contains    ${ENTIDADE_MSG_ERRO}  

Conferir mensagem de exlusão da entidade "${ENTIDADE_MSG_EXCLUSAO}"   
    Wait Until Page Contains  ${ENTIDADE_MSG_EXCLUSAO}  


