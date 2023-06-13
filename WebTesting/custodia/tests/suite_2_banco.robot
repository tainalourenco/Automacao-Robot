*** Settings ***
Documentation    Essa suíte valida o cadastro do Banco
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/banco/bancoPage.robot
Resource         ../resources/pageObject/banco/formularioBancoPage.robot


Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador 


*** Test Cases ***
Condicao de test: Permitir Cadastro do Banco
    [Documentation]    Teste permitido cadastrar um novo banco,preenchendo todos os dados obrigatório
    [Tags]    smocktest
    Submeter primeiro menu Cadastro 
    Sumbeter segundo menu Banco   
    Clicar no botão +Novo  
    Preencher nome do banco "BANCO QA ROBOT" 
    Preencher descrição do banco "BANCO QA ROBOT" 
    Preencher numero do banco "999" 
    Ativar banco
    Submter formulario de adição do banco
    Conferir mensagem de banco cadastrado com sucesso "Operação realizada com sucesso" 

 
Condicao de test: Não permitir cadastrar Banco já cadastrado
    [Documentation]        Teste não permitido cadastrar um novo banco, por já está inserido na base de dados
    Submeter primeiro menu Cadastro 
    Sumbeter segundo menu Banco  
    Clicar no botão +Novo  
    Preencher nome do banco "BANCO QA TESTE" 
    Preencher descrição do banco "BANCO QA TESTE" 
    Preencher numero do banco "001" 
    Ativar banco
    Submter formulario de adição do banco
    Conferir mensagem de banco não cadastrado "Número de banco já cadastrado."   
   

Condicao de test: Não permitir cadastrar Banco, sem preenchimento dos dados obrigatórios
    [Documentation]        Não permitido cadastrar um novo banco, sem o preenchimento de todos os dados obrigatórios  
    Submeter primeiro menu Cadastro  
    Sumbeter segundo menu Banco  
    Clicar no botão +Novo  
    Submter formulario de adição do banco
    Conferir mensagem de banco não cadastrado sem dados obrigatórios "O campo Nome é obrigatório"  