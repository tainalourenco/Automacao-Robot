*** Settings ***   
Documentation     Essa suíte valida o cadastro Regra de Enquadramento
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/enquadramento/enquadramentoPage.robot
Resource         ../resources/pageObject/enquadramento/formularioRegra_EnqPage.robot


Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador

*** Test Cases ***
Condicao de test: Permiir cadastrar regra de enquadramento 
    [Documentation]    Teste permitir cadastrar uma nova regra de enquadramento, preenchendo todos os dados obrigatórios
    [Tags]    smocktest
    Acessar primeiro menu Enquadramento 
    Acessar Segundo menu Regra de Enquadramento   
    Clicar no botão +Novo da regra  
    Clicar em Regras aplicadas por sacado  
    Clicar em "Sacados não permitidos" 
    Digitar nome da regra "Sacados Não Permitidos Robot"
    Digitar Descrição da regra "Sacados Não Permitidos Robot" 
    Selecionar Tipo de Pessoa "JURIDICA"  
    Digitar numero do CNPJ "54833077000171"  
    Clicar em Adicionar 
    Submeter formulario da regra   
    Conferir mensagem de regra cadastrada "Operação realizada com sucesso"


Condicao de test: Não permitir cadastrar regra já cadastrada
    [Documentation]    Teste não permitir cadastrar regra, por já está cadastrada
    Acessar primeiro menu Enquadramento 
    Acessar Segundo menu Regra de Enquadramento   
    Clicar no botão +Novo da regra  
    Clicar em Regras aplicadas por sacado  
    Clicar em "Sacados não permitidos" 
    Digitar nome da regra "Sacados Não Permitidos QA"
    Digitar Descrição da regra "Sacados Não Permitidos QA" 
    Selecionar Tipo de Pessoa "JURIDICA"  
    Digitar numero do CNPJ "22157747000190"  
    Clicar em Adicionar 
    Submeter formulario da regra   
    Conferir mensagem de regra não cadastrada com erro "Já existe uma regra com o mesmo nome: Sacados Não Permitidos QA"
   

Condicao de test: Não permitir cadastrar regra sem o preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro da regra, por não preencher os dados obrigatórios
    Acessar primeiro menu Enquadramento 
    Acessar Segundo menu Regra de Enquadramento   
    Clicar no botão +Novo da regra  
    Clicar em Regras aplicadas por sacado  
    Clicar em "Sacados não permitidos"
    Submeter formulario da regra    
    Conferir mensagem de regra não cadastrada com erro "O campo Nome da Regra é obrigatório"   


Condicao de test: Excluir regra de enquadramento
    [Documentation]    Teste permitir excluir regra de enquadramento 
    Acessar primeiro menu Enquadramento 
    Acessar Segundo menu Regra de Enquadramento   
    Preencher nome da regra a ser excluída "EXCLUIR REGRA" 
    Consultar regra 
    Clicar em excluir regra   
    Aceitar exclusão da regra
    Conferir mensagem de exlusão da regra "Operação realizada com sucesso"      
        



