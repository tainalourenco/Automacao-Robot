*** Settings ***   
Documentation     Essa suíte valida o cadastro Perfil de Enquadramento
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/enquadramento/enquadramentoPage.robot
Resource         ../resources/pageObject/enquadramento/formularioPerfil_EnqPage.robot

Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador 


*** Test Cases ***
Condicao de test: Cadastro de perfil enquadramento
    [Tags]    smocktest
    Acessar primeiro menu Enquadramento 
    Acessar segundo menu Perfil Enquadramento    
    Clicar no botão +Novo do perfil   
    Digitar nome do perfil "Perfil Sacados Não Permitidos Robot"
    Digitar descrição do perfil "Perfil Sacados Não Permitidos Robot" 
    Selecionar regra ao perfil
    Clicar em Salvar Perfil 
    Aceitar cadastro   
    Conferir mensagem de perfil cadastrado "Perfil Enquadramento cadastrado com sucesso." 


Condicao de test: Não permitir cadastrar perfil já cadastrada
    [Documentation]    Teste não permitir cadastrar perfil, por já está cadastrada
    [Tags]    smocktest
    Acessar primeiro menu Enquadramento 
    Acessar segundo menu Perfil Enquadramento    
    Clicar no botão +Novo do perfil   
    Digitar nome do perfil "Perfil Sacados Não Permitido QA"
    Digitar descrição do perfil "Perfil Sacados Não Permitido QA" 
    Selecionar regra ao perfil
    Clicar em Salvar Perfil 
    Aceitar cadastro   
    Conferir mensagem do perfil não cadastrada com erro "Já existe Perfil com o nome: Perfil Sacados Não Permitido QA"     


Condicao de test: Não permitir cadastrar perfil sem o preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro do perfil enquadramento, por não preencher os dados obrigatórios
    [Tags]    smocktest
    Acessar primeiro menu Enquadramento 
    Acessar segundo menu Perfil Enquadramento    
    Clicar no botão +Novo do perfil   
    Clicar em Salvar Perfil 
    Aceitar cadastro   
    Conferir mensagem do perfil não cadastrada com erro "O campo Nome é obrigatório" 


Condicao de test: Excluir perfil de enquadramento
    [Documentation]    Teste permitir excluir perfil de enquadramento 
    Acessar primeiro menu Enquadramento 
    Acessar segundo menu Perfil Enquadramento  
    Preencher nome do perfil de enquadramento a ser excluído "Excluir Perfil" 
    Consultar perfil de enquadramento 
    Clicar em excluir perfil de enquadramento  
    Conferir mensagem de exlusão do perfil "Perfil Enquadramento excluído com sucesso."  






