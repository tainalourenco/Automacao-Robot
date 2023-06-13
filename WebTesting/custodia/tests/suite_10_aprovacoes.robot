*** Settings ***
Documentation        Essa suíte valida o cadastro de cedente
Resource             ../resources/pageObject/login/login.robot
Resource             ../resources/pageObject/home/homePage.robot
Resource             ../resources/pageObject/liquidacao/liquidacao/liquidacaoPage.robot



Test Setup           Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown        Fechar o navegador


*** Test Cases ***
Condicao de test: Aprovar custodiante sem arquivo fisico
    [Documentation]    Teste permitir aprovar custodiante sem arquivo fisico - todos os arquivos disponíveis
    [Tags]    smocktest
    Submeter primeiro menu Liquidação 
    Submeter segundo menu Liquidação  
    Selecionar situação da liquidação "Aguardando aprovação interna do custodiante"
    Preencher data da operação "01/05/2023"
    Consultar operação da liquidação 
    Selecionar todas operações sem arquivo fisico 
    Clicar em Aprovar sem arquivo  
    Conferir mensagem de custodiante aprovado com sucesso "Fundo não está ativo para pagamento via Matera"  


# Condicao de test: Aprovar custodiante via detalhes
#     [Documentation]    Teste permitir aprovar custodiante via detalhes
#     [Tags]    smocktest
#     Submeter primeiro menu Liquidação 
#     Submeter segundo menu Liquidação  
#     Selecionar situação da liquidação "Aguardando aprovação interna do custodiante"
#     Preencher data da operação "01/05/2023"
#     Consultar operação da liquidação 
#     Clicar em detalhes da primeira operação listada
#     Clicar em Aprovar operação da pagina detalhes 
#     Conferir mensagem de custodiante aprovado com sucesso "Liquidação aprovada com sucesso."      


# Condicao de test: Aprovar pelo filtro
#     [Documentation]    Teste permitir aprovar custodiante pelo filtro
#     [Tags]    smocktest
#     Submeter primeiro menu Liquidação 
#     Submeter segundo menu Liquidação  
#     Selecionar situação da liquidação "Aguardando aprovação interna do custodiante"
#     Consultar operação da liquidação 
#     Clicar em detalhes da primeira operação listada
#     Clicar em Aprovar operação da pagina detalhes 
#     Conferir mensagem de custodiante aprovado com sucesso "Liquidação aprovada com sucesso." 
   

 


