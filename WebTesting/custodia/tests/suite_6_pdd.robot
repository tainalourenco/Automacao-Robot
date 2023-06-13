*** Settings ***
Documentation    Essa suíte valida o cadastro de PDD
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/enquadramento/enquadramentoPage.robot
Resource         ../resources/pageObject/enquadramento/formularioPddPage.robot

Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador  
# Test Timeout          10s  
  
 
*** Test Cases ***
Condicao de test: Cadastrar Novo PDD
    [Tags]    smocktest
    [Documentation]        Esse teste realiza o cadastro de um novo pdd com sucesso
    Acessar primeiro menu Enquadramento
    Acessar Segundo menu PDD
    Clicar no botão +Novo 
    Digitar nome "PDD TESTE ROBOT"
    Selecionar Faixa única
    Clicar em Salvar
    Conferir mensagem de pdd cadastrado ou alterado "PDD cadastrado com sucesso." 
   

Condicao de test: Não permitir cadastrar PDD já cadastrado
    [Documentation]        Esse teste não permite realizar o cadastro de um PDD, que já esteja inserido na base de dados
    Acessar primeiro menu Enquadramento
    Acessar Segundo menu PDD
    Clicar no botão +Novo
    Digitar nome "PDD TESTE QA"
    Selecionar Faixa única
    Clicar em Salvar
    Conferir mensagem de pdd ja cadastrado "Perfil de PDD "PDD TESTE QA" já cadastrado!"  


Condicao de test: Alterar nome do PDD
    [Documentation]        Esse teste vai validar a alteração do nome PDD
    Acessar primeiro menu Enquadramento
    Acessar Segundo menu PDD
    Digitar PDD cadastrado "PDD TESTE ALTERAR"
    Consultar PDD
    Clicar em Editar
    Digitar nome "PDD TESTE"
    Clicar em Salvar
    Conferir mensagem de pdd cadastrado ou alterado "PDD cadastrado com sucesso." 


Condicao de test: Excluir PDD
    [Documentation]        Esse teste vai validar a exclusão do PDD
    Acessar primeiro menu Enquadramento
    Acessar Segundo menu PDD
    Digitar PDD cadastrado "PDD EXCLUIR"
    Consultar PDD
    Clicar em excluir
    Aceitar exclusão   
    Conferir mensagem de exlusão do pdd "PDD excluído com sucesso." 
    
    
Condicao de test: Não permitir cadastrar PDD sem preenchimento dos dados obrigatórios
    [Documentation]        Esse teste não vai permitir cadastrar um PDD, por não preencher os dados obrigatórios
    Acessar primeiro menu Enquadramento
    Acessar Segundo menu PDD
    Clicar no botão +Novo
    Clicar em Salvar
    Conferir campo obrigatório "O nome do PDD deve ser informado!"   
   