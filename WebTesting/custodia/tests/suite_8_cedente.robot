*** Settings ***
Documentation        Essa suíte valida o cadastro de cedente
Resource             ../resources/pageObject/login/login.robot
Resource             ../resources/pageObject/home/homePage.robot
Resource             ../resources/pageObject/fundo/fundoPage.robot
Resource             ../resources/pageObject/cedente/cedentePage.robot
Resource             ../resources/pageObject/cedente/formularioCedentePage.robot 


Test Setup           Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown        Fechar o navegador


*** Test Cases ***
Condicao de test: Permitir cadastrar de cedente
    [Documentation]    Teste permitir cadastrar um noo cedente, preenchendo todos os dados obrigatório
    [Tags]    smocktest
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Submeter primeiro menu Cedente
    Submeter segundo menu Cedente
    Clicar no botão +Novo do cadastro de cedente

    #Formulario cadastro novo cedente
    Selecionar fundo "FUNDO QA ROBOT"
    Preencher nome do cedente "CEDENTE QA ROBOT"
    Selecionar tipo de pessoa juridica do cedente
    Preencher cnpj do cedente "27.231.738/0001-16"
    Selecionar tipo de inscrição estadual isento 
    Selecionar ramo de atividade do cedente "FINANCEIRO"
    Preencher e-mail do cedente "teste@sinqia.com.br"
    Selecionar porte do cedente "Médio"
    Selecionando tipo sociedade do cedente "INSTITUIÇÃO FINANCEIRA"
    Selecionando classe de risco do cedente "Classificação de risco A"
    Preencher inicio de relacionamento do cedente "01/05/2023"
    Selecionar autorização do cedente
    Preencher endeço do cedente "Rua Teste"
    Preencher numero do endereço do cedente "422"
    Preencher cep do cedente "05335-050"
    Preencher bairro do cedente "Jaguaré"
    Preencher cidade do cedente "São Paulo"
    Selecionar uf do cedente "São Paulo"
    
    #Dados da conta 
    Selecionar banco dos dados da conta do cedente "098 - BANCO DESCONHECIDO"
    Preencher nume da agencia do cedente "0030"
    Preencher numero da conta do cedente "005544"
    Preencher digito da conta do cedente "8"
    Preencher descrição da conta do cedente "CONTA CEDENTE TESTE"
    Selecionar conta ativa
    Selecionar conta como padrão
    Adicionar conta do cedente

    #Dados do representante
    Preencher nome do representante cedente "REPRESENTANTE QA ROBOT" 
    Preencher email do representante cedente "teste@sinqia.com.br" 
    Selecionar tipo de pessoa juridica do representante cedente     
    Preencher cnpj do representante cedente "62.821.529/0001-23" 
    Adicionar representante do cedente 
    Submeter formulario de adição do cedente 
    Conferir mensagem de cadastro realizado com sucesso do cedente "Operação realizada com sucesso"


Condicao de test: Não permitir cadastrar cedente já cadastrado
    [Documentation]    Teste não permitir realizar o cadastro do cedente, cedente já cadastrado
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Submeter primeiro menu Cedente
    Submeter segundo menu Cedente
    Clicar no botão +Novo do cadastro de cedente

    #Formulario cadastro novo cedente
    Selecionar fundo "FUNDO QA"
    Preencher nome do cedente "CEDENTE QA"
    Selecionar tipo de pessoa juridica do cedente
    Preencher cnpj do cedente "18.644.490/0001-24"
    Selecionar tipo de inscrição estadual isento 
    Selecionar ramo de atividade do cedente "FINANCEIRO"
    Preencher e-mail do cedente "teste@sinqia.com.br"
    Selecionar porte do cedente "Médio"
    Selecionando tipo sociedade do cedente "INSTITUIÇÃO FINANCEIRA"
    Selecionando classe de risco do cedente "Classificação de risco A"
    Preencher inicio de relacionamento do cedente "01/05/2023"
    Selecionar autorização do cedente
    Preencher endeço do cedente "Rua Teste"
    Preencher numero do endereço do cedente "422"
    Preencher cep do cedente "05335-050"
    Preencher bairro do cedente "Jaguaré"
    Preencher cidade do cedente "São Paulo"
    Selecionar uf do cedente "São Paulo"
    
    #Dados da conta 
    Selecionar banco dos dados da conta do cedente "098 - BANCO DESCONHECIDO"
    Preencher nume da agencia do cedente "0031"
    Preencher numero da conta do cedente "005545"
    Preencher digito da conta do cedente "8"
    Preencher descrição da conta do cedente "CONTA CEDENTE"
    Selecionar conta ativa
    Selecionar conta como padrão
    Adicionar conta do cedente

    #Dados do representante
    Preencher nome do representante cedente "REPRESENTANTE QA" 
    Preencher email do representante cedente "teste@sinqia.com.br" 
    Selecionar tipo de pessoa juridica do representante cedente     
    Preencher cnpj do representante cedente "62.821.529/0001-23" 
    Adicionar representante do cedente 
    Submeter formulario de adição do cedente 
    Conferir mensagem de cadastrao nao realizado do cedente "Já existe Cedente com o CNPJ: 18.644.490/0001-24 para o fundo: FUNDO QA" 


Condicao de test: Não permitir cadastrar Cedente sem preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro do cedente, por não preencher os dadso obrigatórios
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Submeter primeiro menu Cedente
    Submeter segundo menu Cedente
    Clicar no botão +Novo do cadastro de cedente 
    Submeter formulario de adição do cedente 
    Conferir mensagem de cadastrao nao realizado do cedente "O campo Fundo é obrigatório"    


Condicao de test: Excluir cedente
    [Documentation]    Teste permitir exclusão do cedente
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Submeter primeiro menu Cedente
    Submeter segundo menu Cedente
    Preencher cnpj do cedente a ser excluido "86.396.305/0001-80"
    Selecionar fundo tela de consulta cedente "FUNDO QA"
    Consultar cedente 
    Clicar em excluir cedente
    Aceitar exclusão do cedente  
    Conferir mensagem de exlusão do cedente "Operação realizada com sucesso"      
    

    
    

 
 



