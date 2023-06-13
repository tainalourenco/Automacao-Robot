*** Settings ***
Documentation        Essa suíte valida o cadastro de cedente
Resource             ../resources/pageObject/login/login.robot
Resource             ../resources/pageObject/home/homePage.robot
Resource             ../resources/pageObject/seguranca/usuario/usuarioPage.robot
Resource             ../resources/pageObject/seguranca/usuario/formularioUsuarioPage.robot



Test Setup           Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown        Fechar o navegador


*** Test Cases ***
Condicao de test: Permitir cadastrar novo usuário
    [Documentation]    Teste permitir cadastrar um novo usuario, preenchendo todos os dados obrigatório
    [Tags]    smocktest
    Submeter primeiro menu Cadastro 
    Submeter primeiro menu Seguranca
    Submeter segundo menu Usuario
    Clicar no botão +Novo do cadastro do usuario
    Prencher login do usuario "qa.robot"
    Preencher senha do usuario "Sinqia@2023"
    Preencher confirmação da senha do usuario "Sinqia@2023"
    Selecionar não atualizar cadastro do usuario
    Ativar usuario
    Submeter formulario de adição do usuario 
    Conferir mensagem de cadastro realizado com sucesso do usuario "Operação realizada com sucesso" 


Condicao de test: Não permitir cadastrar usuário já cadastrado
    [Documentation]    Teste não permitir realizar o cadastro do usuário, usuário já cadastrado
    Submeter primeiro menu Cadastro 
    Submeter primeiro menu Seguranca
    Submeter segundo menu Usuario
    Clicar no botão +Novo do cadastro do usuario
    Prencher login do usuario "usuario.teste"
    Preencher senha do usuario "Sinqia@2023"
    Preencher confirmação da senha do usuario "Sinqia@2023"
    Selecionar não atualizar cadastro do usuario
    Ativar usuario
    Submeter formulario de adição do usuario 
    Conferir mensagem de usuario não cadastrado com erro "Login já está sendo utilizado por outro cliente!"    


Condicao de test: Não permitir cadastrar usuário sem preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro do usuário, por não preencher os dadso obrigatórios
    Submeter primeiro menu Cadastro 
    Submeter primeiro menu Seguranca
    Submeter segundo menu Usuario
    Clicar no botão +Novo do cadastro do usuario
    Submeter formulario de adição do usuario 
    Conferir mensagem de usuario não cadastrado com erro "O campo Login é obrigatório" 


Condicao de test: Desativar usuário
    [Documentation]    Teste permitir desativar do usuário
    Submeter primeiro menu Cadastro 
    Submeter primeiro menu Seguranca
    Submeter segundo menu Usuario
    Preencher login da pesquisa "qa.excluir"
    Consultar usuario  
    Clicar em excluir usuario
    Aceitar inativação do usuario 
    Conferir mensagem de exclusão do usuario "Usuário desativado com sucesso."      




    
  