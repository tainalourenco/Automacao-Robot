*** Settings ***
Documentation    Essa suíte valida o cadastro de Entidade
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/entidade/entidadePage.robot
Resource         ../resources/pageObject/entidade/formularioAbaDadosCadastraisPage.robot
Resource         ../resources/pageObject/entidade/formularioAbaPapeisDesempenhadosPage.robot
Resource         ../resources/pageObject/entidade/formularioAbaContaCorrenteConsultoriaPage.robot
Resource         ../resources/pageObject/entidade/formularioAbaRepresentantesPage.robot
Resource         ../resources/pageObject/entidade/formularioAbaPartesRelacionadasPage.robot


Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador  


*** Test Cases ***
Condicao de test: Permitir Cadastrar Entidade
    [Documentation]    Teste permitir cadastrar uma nova entidade, preenchendo todos os dados obrigatórios
    [Tags]    smocktest 
    Submeter primeiro menu Cadastro
    Submeter segundo menu Entidade  
    Clicar no botão +Novo do cadastro entidade
    Preencher razão social "ENTIDADE ORIGINADOR QA ROBOT"
    Selecionar tipo de pessoa juridica 
    Preencher numero do cnpj da entidade "87.791.782/0001-02" 
    Preencher email "teste@teste.com"
    Preencher endereço "Rua Teste"
    Preencher numero do endereço "420"
    Selecionar o estado "SP"
 
    #Aba Papeis Desempenhados
    Submeter aba Papeis Desempenhados
    Selecionar papel originador  

    #Aba Conta Corrente Consultoria
    Submeter aba Conta Corrente Consultoria   
    Selecionar codigo do banco "135"
    Preencher agencia do banco "0010"
    Preencher conta "002233" 
    Preencher descrição da conta "CONTA TESTE ENTIDADE"
    Adicionar conta 
 
    #Aba Representantes
    Submeter aba Representantes
    Preencher nome do representante da entidade "REPRESENTANTE TESTE"
    Preencher email do representante "teste@sinqia.com.br"
    Selecionar tipo de pessoa juridica representante 
    Preencher numero do cnpj do representante "52.371.621/0001-85"
    Preencher numero do teledone do representante "111455755555"
    Adicionar representante 

    #Aba Partes Relacionadas 
    Submeter aba Partes Relacionadas  
    Preencher nome da parte relacionada da entidade "PARTE RELACIONADA TESTE"
    Selecionar tipo de pessoa juridica das partes relacionada  
    Preencher numero do cnpj da parte relacionada "26.239.853/0001-74"
    Adicionar Partes Relacionadas 
    Submter formulario de adição da entidade 
    Conferir mensagem de entidade cadastrada com sucesso "Operação realizada com sucesso" 


Condicao de test: Não permitir cadastrar entidade já cadastrada
    [Documentation]    Teste não permitir cadastrar entidade, por já está cadastrada
    Submeter primeiro menu Cadastro
    Submeter segundo menu Entidade  
    Clicar no botão +Novo do cadastro entidade
    Preencher razão social "ENTIDADE ORIGINADOR QA"
    Selecionar tipo de pessoa juridica 
    Preencher numero do cnpj da entidade "68.744.885/0001-77" 
    Preencher email "teste@teste.com"
    Preencher endereço "Rua Teste"
    Preencher numero do endereço "420"
    Selecionar o estado "SP"
  
    #Aba Papeis Desempenhados
    Submeter aba Papeis Desempenhados
    Selecionar papel originador  

    #Aba Conta Corrente Consultoria
    Submeter aba Conta Corrente Consultoria   
    Selecionar codigo do banco "135"
    Preencher agencia do banco "0010"
    Preencher conta "002233" 
    Preencher descrição da conta "CONTA TESTE ENTIDADE"
    Adicionar conta 
 
    #Aba Representantes
    Submeter aba Representantes
    Preencher nome do representante da entidade "REPRESENTANTE TESTE"
    Preencher email do representante "teste@sinqia.com.br"
    Selecionar tipo de pessoa juridica representante 
    Preencher numero do cnpj do representante "52.371.621/0001-85"
    Preencher numero do teledone do representante "111455755555"
    Adicionar representante 

    #Aba Partes Relacionadas 
    Submeter aba Partes Relacionadas  
    Preencher nome da parte relacionada da entidade "PARTE RELACIONADA TESTE"
    Selecionar tipo de pessoa juridica das partes relacionada  
    Preencher numero do cnpj da parte relacionada "26.239.853/0001-74"
    Adicionar Partes Relacionadas 
    Submter formulario de adição da entidade    
    Conferir mensagem de entidade nao cadastrada com erro "CPf ou CNPJ já cadastrado" 


Condicao de test: Não permitir cadastrar entidade sem preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro da entidade, por não preencher os dados obrigatórios
    Submeter primeiro menu Cadastro
    Submeter segundo menu Entidade  
    Clicar no botão +Novo do cadastro entidade
    Submter formulario de adição da entidade 
    Conferir mensagem de entidade nao cadastrada com erro "O campo Razão Social é obrigatório"  


Condicao de test: Excluir entidade
    [Documentation]    Teste permitir exclusão da entidade
    Submeter primeiro menu Cadastro
    Submeter segundo menu Entidade  
    Preencher cnpj da entidade a ser excluido "29.459.320/0001-96"
    Consultar entidade  
    Clicar em excluir entidade
    Aceitar exclusão da entidade  
    Conferir mensagem de exlusão da entidade "Operação realizada com sucesso"        

    
 
