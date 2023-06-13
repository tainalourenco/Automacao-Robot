*** Settings ***
Library        SeleniumLibrary
Documentation    Mapping e Action página Liquidação


*** Variables ***
${SUB_MENU_LIQUID}                       id=menuForm:j_idt121
${LIQUIDA_SITUACAO}                      id=formLiquidacao:situacao 
${LIQUIDA_BT_PESQ}                       id=formLiquidacao:j_idt248
${LIQUIDA_SEL_TD_OPER_SEM_ARQ_FIS}       id=formLiquidacao:pagedDataTable:marcarSemArquivoID
${LIQUIDA_BT_APRV_SEM_ARQ}               id=formLiquidacao:pagedDataTable:j_idt368
${LIQUIDA_BT_DETAIL}                     id=formLiquidacao:pagedDataTable:0:j_idt336
${LIQUIDA_BT_APRV_DETAIL}                id=form:aprovar
${LIQUIDA_INPUT_DT_OPER}                 id=formLiquidacao:dataInputDate
        




*** Keywords ***
Submeter segundo menu Liquidação 
    Wait Until Element Is Visible    ${SUB_MENU_LIQUID}
    Click Element    ${SUB_MENU_LIQUID} 
    
Selecionar situação da liquidação "${SELECT_SIT_LIQUIDA}"
    Select From List By Label    ${LIQUIDA_SITUACAO}    ${SELECT_SIT_LIQUIDA}  

Preencher data da operação "${LIQUIDA_DT_OPE}"
    Input Text    ${LIQUIDA_INPUT_DT_OPER}    ${LIQUIDA_DT_OPE} 

Consultar operação da liquidação
    Click Element    ${LIQUIDA_BT_PESQ}

Clicar em detalhes da primeira operação listada
    Wait Until Element Is Visible    ${LIQUIDA_BT_DETAIL} 
    Click Element    ${LIQUIDA_BT_DETAIL} 

Selecionar todas operações sem arquivo fisico
    Sleep    2 
    Click Element    ${LIQUIDA_SEL_TD_OPER_SEM_ARQ_FIS}

Clicar em Aprovar sem arquivo
     Sleep    2 
    Click Element    ${LIQUIDA_BT_APRV_SEM_ARQ}
    # Repeat Keyword    2    Clicar em Aprovar sem arquivo  

Clicar em Aprovar operação da pagina detalhes
    Wait Until Element Is Visible    ${LIQUIDA_BT_APRV_DETAIL}
    Click Element    ${LIQUIDA_BT_APRV_DETAIL}    

Conferir mensagem de custodiante aprovado com sucesso "${LIQUIDA_MSG_APROV_SUCESS}" 
        Sleep    5  
        Wait Until Page Contains    ${LIQUIDA_MSG_APROV_SUCESS}  