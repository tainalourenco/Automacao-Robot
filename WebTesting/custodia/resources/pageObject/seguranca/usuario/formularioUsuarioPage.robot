*** Settings ***
Library            SeleniumLibrary
Documentation      Mapping e Action formulário cadastro de usuario

                                            #Mapping

*** Variables ***
${USUARIO_INPUT_LOGIN}                    id=form:login
${USUARIO_INPUT_PWD}                      id=form:pwd
${USUARIO_INPUT_CONF_PWD}                 id=form:confirmacao
${USUARIO_N_ATUAL_CADAST}                 id=form:atualizacaoCadastral:0
${USUARIO_ATIVADO}                        id=form:habilitado:1
${USUARIO_BT_ADC}                         link=Salvar


*** Keywords ***
Prencher login do usuario "${USUARIO_LOGIN}"
    Input Text    ${USUARIO_INPUT_LOGIN}    ${USUARIO_LOGIN} 

Preencher senha do usuario "${USUARIO_SENHA}"
    Input Text    ${USUARIO_INPUT_PWD}    ${USUARIO_SENHA} 

Preencher confirmação da senha do usuario "${USUARIO_CONF_PWD}"
    Input Text    ${USUARIO_INPUT_CONF_PWD}    ${USUARIO_CONF_PWD}

Selecionar não atualizar cadastro do usuario
    Click Element    ${USUARIO_N_ATUAL_CADAST} 

Ativar usuario
    Click Element    ${USUARIO_ATIVADO} 

Submeter formulario de adição do usuario    
    Click Link    ${USUARIO_BT_ADC}   



