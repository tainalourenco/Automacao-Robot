*** Settings ***
Documentation    Essa suíte valida o cadastro do fundo
Resource         ../resources/pageObject/login/login.robot
Resource         ../resources/pageObject/home/homePage.robot
Resource         ../resources/pageObject/fundo/fundoPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaDadosCadastraisPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaDadosAdicionaisPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaPerfisPddPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaPrecificacaoPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaCarteiraSistemaAtivoPage.robot 
Resource         ../resources/pageObject/fundo/formularioAbaAtivosPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaOriginadoresPage.robot
Resource         ../resources/pageObject/fundo/formularioAbaRepresPage.robot   
Resource         ../resources/pageObject/fundo/formularioAbaLiquidacaoPage.robot 
Resource         ../resources/pageObject/fundo/formularioAbaContaCorrentePage.robot  
 

Test Setup            Acessar página de login, digitar usuário e senha valido "fromtis" e "fromtis!Q@W#E" e submter o formulario de login                
Test Teardown         Fechar o navegador
 

*** Test Cases ***
Condicao de test: Permitir Cadastro do Fundo
    [Documentation]    Teste permitir cadastrar um novo fundo, preenchendo todos os dados obrigatório
    [Tags]    smocktest
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Sumbeter segundo menu Fundo 
    Clicar no botão +Novo do cadastro do fundo

    #Aba Dados Cadastrais
    Preencher código isin do fundo "0010" 
    Prrencher código anbid do fundo "0011" 
    Preencher data inicio do processamento do fundo "01/05/2023"
    Selecionar tipo de dias do fundo 
    Selecionar tipo do fundo "204"
    Selecionar opção do fundo 
    Selecionar situação do fundo "1"
    Selecionar nível de risco do fundo "3"  
    Selecionar status do processamento do fundo "DISPONIVEL"
    Selecionar layout de aquisicao do fundo "16"
    Selecionar layout de ocorrência do fundo "16"
    Submeter formumario aba Dados Acionais   
    
    #Aba Dados Adicionais
    Preencher nome do fundo "FUNDO QA ROBOT"
    Preencher numero do cnpj do fundo "69.661.689/0001-00"
    Selecionar agencia classificação de risco "ENTIDADE ADMINISTRADORA"
    Selecionar nome do administrador "ENTIDADE ADMINISTRADORA"
    Selecionar agente escriturador "ENTIDADE ADMINISTRADORA"
    Selecionar nome do custodiante "ENTIDADE ADMINISTRADORA"
    Selecionar do controlador ativo "ENTIDADE ADMINISTRADORA"
    Selecionar nome do gestor "ENTIDADE ADMINISTRADORA"
    Selecionar nome do controlador passivo "ENTIDADE ADMINISTRADORA"
    Selecionar nome do auditor independente "ENTIDADE ADMINISTRADORA"
    Selecionar nome da consultoria "ENTIDADE ADMINISTRADORA"
    Preencher prazo recepcao da chave nfe "5"  
    Preencher prazo recepcao do lastro "5"
    Seleciona nao considerar pos fixado
    Seleciona opera com pL zerado
    Selecionar nome do banco de cobrança "098 - BANCO DESCONHECIDO" 
    Preencher código do banco de cobrança "00000000000000000010" 
    Preencher Data Inicio Relacionamento Cobranca "01/03/2023"
    Adicionar Cobranca
    Submeter ao formulario Aba Perfis PDD Fundo   

    #Aba Perfis PDD
    Selecionar Perfil Pdd "PDD TESTE ROBOT"   
    Adicionar Perfil Pdd 
    Submeter ao formulario Aba Precificação  
 
    #Aba Perfis Precificação
    Selecionar modelo de precificacao "Por Recebível"
    Selecionar aplica-se precificacao em "Toda Carteira"
    Submeter ao formulário da aba Carteira Sistema De Ativos   
    
    #Aba Carteira Sistema de Ativos
    Selecionar tipo de cota "Única"
    Preencher numero do codigo da carteira "0010"
    Adicionar tipo cota
    Submeter ao formulario Aba Ativos 
 
    #Aba Ativos
    Preencher ativo a vencer "A"
    preencher ativo vencidos "V"
    Preencher ativo pdd "P"
    Submeter ao formulário Aba Originadores 
 
    #Aba Originadores
    Selecionar originador "ENTIDADE ORIGINADOR QA ROBOT" 
    Selecionar conta do originador "CONTA TESTE ENTIDADE"
    Selecionar data inicio de relacionamento do originador
    Preencher codigo do Originador "00000000000000000010"
    Adicionar originador 
    Submeter ao formulário aba Representantes  

    #Aba Representantes
    Preencher nome representante "TESTE"  
    Preencher email representante "teste@sinqia.com.br" 
    Selecionar tipo pessoa juridica do representante 
    Preencher numero telefone do representante "(11) 44557-7878"
    Preencher numero cnpj do representante "31.490.778/0001-50"
    Adicionar representante do fundo   
    Submeter ao formulario da aba Liquidacao

    #Aba Liquidação 
    Ativar liquidacao
    Ativar solicitacao de pagamento 
    Preencher limite de reembolso "10,00" 
    Selecionar pagar liquidacao via "Banco Cobrador"
    Selecionar pagar solicitacao via "Banco Cobrador"
    Preencher percentual de reembolso "10,00"
    Submeter ao formulario da aba Conta Corrente

    #Aba Conta Corrente 
    Selecionar banco conta corrente "098 - BANCO DESCONHECIDO"
    Preencher numero da agencia da conta corrente "0011"
    Prencher numero da conta "448877"
    Prencher digito da conta "5"
    Preencher descricao da conta "CONTA DO FUNDO" 
    Submeter formulario de adicao do fundo 
    Conferir mensagem de cadastro realizado com sucesso do fundo "Operação realizada com sucesso"  


Condicao de test: Não permitir cadastrar fundo já cadastrado
    [Documentation]    Teste não permitir cadastrar fundo, por já está cadastrado
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Sumbeter segundo menu Fundo 
    Clicar no botão +Novo do cadastro do fundo

    #Aba Dados Cadastrais
    Preencher código isin do fundo "0011" 
    Prrencher código anbid do fundo "0012" 
    Preencher data inicio do processamento do fundo "01/05/2023"
    Selecionar tipo de dias do fundo 
    Selecionar tipo do fundo "204"
    Selecionar opção do fundo 
    Selecionar situação do fundo "1"
    Selecionar nível de risco do fundo "3"  
    Selecionar status do processamento do fundo "DISPONIVEL"
    Selecionar layout de aquisicao do fundo "16"
    Selecionar layout de ocorrência do fundo "16"
    Submeter formumario aba Dados Acionais   
    
    #Aba Dados Adicionais
    Preencher nome do fundo "FUNDO QA"
    Preencher numero do cnpj do fundo "31.435.840/0001-00"
    Selecionar agencia classificação de risco "ENTIDADE ADMINISTRADORA"
    Selecionar nome do administrador "ENTIDADE ADMINISTRADORA"
    Selecionar agente escriturador "ENTIDADE ADMINISTRADORA"
    Selecionar nome do custodiante "ENTIDADE ADMINISTRADORA"
    Selecionar do controlador ativo "ENTIDADE ADMINISTRADORA"
    Selecionar nome do gestor "ENTIDADE ADMINISTRADORA"
    Selecionar nome do controlador passivo "ENTIDADE ADMINISTRADORA"
    Selecionar nome do auditor independente "ENTIDADE ADMINISTRADORA"
    Selecionar nome da consultoria "ENTIDADE ADMINISTRADORA"
    Preencher prazo recepcao da chave nfe "5"  
    Preencher prazo recepcao do lastro "5"
    Seleciona nao considerar pos fixado
    Seleciona opera com pL zerado
    Selecionar nome do banco de cobrança "098 - BANCO DESCONHECIDO" 
    Preencher código do banco de cobrança "00000000000000000010" 
    Preencher Data Inicio Relacionamento Cobranca "01/03/2023"
    Adicionar Cobranca
    Submeter ao formulario Aba Perfis PDD Fundo   

    #Aba Perfis PDD
    Selecionar Perfil Pdd "PDD TESTE QA"   
    Adicionar Perfil Pdd 
    Submeter ao formulario Aba Precificação  
 
    #Aba Perfis Precificação
    Selecionar modelo de precificacao "Por Recebível"
    Selecionar aplica-se precificacao em "Toda Carteira"
    Submeter ao formulário da aba Carteira Sistema De Ativos   
    
    #Aba Carteira Sistema de Ativos
    Selecionar tipo de cota "Única"
    Preencher numero do codigo da carteira "0010"
    Adicionar tipo cota
    Submeter ao formulario Aba Ativos 
 
    #Aba Ativos
    Preencher ativo a vencer "A"
    preencher ativo vencidos "V"
    Preencher ativo pdd "P"
    Submeter ao formulário Aba Originadores 
 
    #Aba Originadores
    Selecionar originador "ENTIDADE ORIGINADOR QA" 
    Selecionar conta do originador "CONTA TESTE ENTIDADE"
    Selecionar data inicio de relacionamento do originador
    Preencher codigo do Originador "00000000000000000011"
    Adicionar originador 
    Submeter ao formulário aba Representantes  

    #Aba Representantes
    Preencher nome representante "TESTE"  
    Preencher email representante "teste@sinqia.com.br" 
    Selecionar tipo pessoa juridica do representante 
    Preencher numero telefone do representante "(11) 44557-7878"
    Preencher numero cnpj do representante "51.891.222/0001-82"
    Adicionar representante do fundo   
    Submeter ao formulario da aba Liquidacao

    #Aba Liquidação 
    Ativar liquidacao
    Ativar solicitacao de pagamento 
    Preencher limite de reembolso "10,00" 
    Selecionar pagar liquidacao via "Banco Cobrador"
    Selecionar pagar solicitacao via "Banco Cobrador"
    Preencher percentual de reembolso "10,00"
    Submeter ao formulario da aba Conta Corrente

    #Aba Conta Corrente 
    Selecionar banco conta corrente "098 - BANCO DESCONHECIDO"
    Preencher numero da agencia da conta corrente "0012"
    Prencher numero da conta "448876"
    Prencher digito da conta "5"
    Preencher descricao da conta "CONTA DO FUNDO" 
    Submeter formulario de adicao do fundo 
    Conferir mensagem de fundo não cadastrado com erro "Já existe um Fundo para o CNPJ: (31.435.840/0001-00)"

Condicao de test: Não permitir cadastrar fundo sem preenchimento dos dados obrigatórios
    [Documentation]    Teste não permitir realizar o cadastro do fundo, por não preencher os dados obrigatórios
    Submeter primeiro menu Cadastro 
    Sumbeter primeiro menu Fundo 
    Sumbeter segundo menu Fundo 
    Clicar no botão +Novo do cadastro do fundo
    Submeter formulario de adicao do fundo
    Conferir mensagem de fundo não cadastrado com erro "O campo Código ISIN Aba Dados Cadastrais é obrigatório"  


# Condição de teste:
 

    


            
 

 
  
 
   