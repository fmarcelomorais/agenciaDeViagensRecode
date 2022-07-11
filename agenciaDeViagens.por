//Usando conceitos de programação estruturada (Vetor), criar em pseudocódigo 
//um menu para simular um cadastro para uma agência de viagens com as seguintes 
//funções: cadastro de cliente e cadastro de destino, criar também uma consulta para cada estrutura de dados. 

programa
{
	// Declaração das variáveis
	cadeia usuario[2]
	cadeia destinos[10][4] // estrutura de dados - Dados Destino - Lugar, Cidade, estado, país
	cadeia clientes[10][3]// estrutura de dados - Dados Cliente - Nome, Sobrenome, cpf
	cadeia pacote[7] // estrutura de dados para salvar o cliente e o destino
	inteiro tamCli = 0	
	inteiro tamDes = 0
	cadeia cliente[3]
	cadeia destino[4]


funcao cadastraUsuario(){
	cadeia nome = ""
	cadeia senha = ""

	escreva("----CADASTRO DE USUARIO----\n")
	
	escreva("Digite o nome de usuario: ")
	leia(nome)
	escreva("\nDigite uma senha: ")
	leia(senha)
	se(nome== "" ou senha == ""){
		escreva("Existe campos em branco. Favor preencher campo vazio.")
	}senao{
		usuario[0] = nome
		usuario[1] = senha
		escreva("Usuario cadastrado com sucesso!\n")
	}
	login()
	
}

funcao login(){
	
	cadeia nome = ""
	cadeia senha = ""
	se(usuario[0] != ""){
		escreva("-----------------------[ AGENCIA DE VIAGENS - MM VIAGENS ]--------------------------------------\n\n")
		escreva("\n------------------------------------------------------------------------------------------------\n")
		escreva("------------------------------------------[ ENTRAR ]---------------------------------------\n")
		escreva("\n------------------------------------------------------------------------------------------------\n")
		escreva("Usuario: ")
		leia(nome)
		escreva("\nSenha: ")
		leia(senha)
		se(nome == usuario[0] e senha == usuario[1]){
			escreva("Seja bem vindo " + nome)	
			//inicio()
		}senao{
			escreva("Usuario ou senha invalido.\n")
			login()
		}
	}senao{	
		escreva("\n------------------------------------------------------------------------------------------------\n")
		escreva("------------------------------------------[ CADASTRAR NOVO USUARIO ]---------------------------------------\n")
		escreva("\n------------------------------------------------------------------------------------------------\n")
		cadastraUsuario()
	}
}

// Função que cadastra os destino no sistema	
funcao cadastarDestinos(){
		
		inteiro qtd = 0
		escreva("Cadastro de Destino\n")
		escreva("Quantos destinos você deseja cadastrar? maximo 10 >> ")
		leia(qtd)
		escreva("Digite o LUGAR - CIDADE - ESTADO - PAÍS\n")
		
		para(inteiro i =0; i < qtd; i++){
			tamDes += 1
			escreva("Dados do Destino " + (i +1) +": \n")			
			para(inteiro j = 0; j < 4; j++){
				escreva(">> ")
				leia(destinos[i][j])						
			}
			escreva("\n---------------------------\n")					
		}
		escreva("Deseja cadastrar mais destinos ? 1 - [sim] | 2 - [não] \n")
		inteiro opc = 0
		leia(opc)
		escreva(">> ")		
		
		se(opc == 1){
			limpa()
			cadastarDestinos()	
		}senao{
			limpa()
			menu()
		}
		
	}
	
//Função que cadastra os clientes no sistema
funcao cadastrarClientes(){
		
		inteiro qtd = 0
		escreva("Cadastro de Cliente\n")
		escreva("Quanto clientes você deseja cadastrar? maximo 10 >> ")
		leia(qtd)
		escreva("Digite o NOME - SOBRENOME - CIDADE\n")
		
		para(inteiro i =0; i < qtd; i++){
			tamCli += 1
			escreva("Dados do cliente " + (i +1) +": \n")			
			para(inteiro j = 0; j < 3; j++){
				escreva(">> ")
				leia(clientes[i][j])						
			}
			escreva("\n--------------------------\n")					
		}
		escreva("Deseja cadastrar mais clientes? 1 - [sim] | 2 - [não] \n")
		inteiro opc = 0
		leia(opc)
		escreva(">> ")		
		
		se(opc == 1){
			limpa()
			cadastrarClientes()	
		}senao{
			limpa()
			menu()
		}
	}

// Função que pesquisa clientes cadastrados
funcao pesquisarCliente(){
		se(tamCli < 1){
			escreva("Nenhum Cliente cadastrado!\n")
			escreva("Deseja cadastrar ? 1 - [sim] | 2 - [não] \n")
			inteiro opc = 0
			leia(opc)
			escreva(">> ")			
		se(opc == 1){
			limpa()
			cadastrarClientes()
		}senao{
			limpa()
			menu()
		}
			
		}
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o CPF do Cliente: ")
		leia(nome)
		para(inteiro i =0; i < tamCli; i++){
			para(inteiro j =0; j < 3 ; j++){
				se(nome == clientes[i][2]){
					achou = 's'
					cliente[0] = clientes[i][j]
					cliente[1] = clientes[i][j+1]
					cliente[2] = clientes[i][j+2]				
					pare
				}					
			}			
		}
		se(achou == 's'){
			escreva("Nome: "+ cliente[0] +" "+ cliente[1])
		}senao{
			escreva("Cliente não cadastrado\n")
			pesquisarCliente()	
		}
		escreva("\n")
		
		escreva("Deseja fazer nova Pesquisa? 1 - [sim] | 2 - [não] \n")
		inteiro opc = 0
		leia(opc)
		escreva(">> ")		
		
		se(opc == 1){
			limpa()
			pesquisarCliente()	
		}senao{
			limpa()
			pesquisar()
		}
		//retorne cliente[3]
		
	}
	

// Função que pesquisa destinos cadastrados
funcao pesquisarDestino(){
		se(tamDes < 1){
			escreva("Nenhum Destino cadastrado!\n")
			escreva("Deseja cadastrar ? 1 - [sim] | 2 - [não] \n")
			inteiro opcc = 0
			leia(opcc)
			escreva(">> ")			
			se(opcc == 1){
				limpa()
				cadastarDestinos()
			}senao{
				limpa()
				inicio()
			}
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o nome do Lugar: ")
		leia(nome)
		para(inteiro i =0; i < tamDes; i++){
			para(inteiro j =0; j < 4 ; j++){
				se(nome == destinos[i][0]){
					achou = 's'					
					destino[0] = destinos[i][j]
					destino[1] = destinos[i][j+1]
					destino[2] = destinos[i][j+2]
					destino[3] = destinos[i][j+3]
					pare
				}		
			}		
		}
		se(achou == 's'){
			escreva("Lugar: "+ destino[0] )
			escreva("\nCidade: " + destino[1])
		}senao{
			escreva("Destino não cadastrado\n")
			pesquisarDestino()	
		}

		
		escreva("\nDeseja fazer nova Pesquisa? 1 - [sim] | 2 - [não] \n")
		inteiro opc = 0
		leia(opc)
		escreva(">> ")		
		
		se(opc == 1){
			limpa()
			pesquisarDestino()	
		}senao{
			limpa()
			pesquisar()
		}
		
	}
}
// Função que verifica o tipo de pesquisa 	
funcao pesquisar(){
		escreva("Pesquisar Cliente Cadastrado [1] | Pesquisar Destino Cadastrado [2] | Voltar [3]\n")
		inteiro opc = 0
		leia(opc)
		se(opc == 1){
			limpa()
			pesquisarCliente()
		}senao se(opc == 2){
			limpa()
			pesquisarDestino()
		}senao se(opc == 3){
			menu()
		}senao{
			escreva("Opção invalida!! \n")
			pesquisar()
		}
	}

// Função que pesquisa clientes cadastrados e salva no vetor cliente
funcao buscaClienteViagem(){
		escreva("-- Escolha um cliente --\n\n")
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o CPF do Cliente: ")
		leia(nome)
		para(inteiro i =0; i < tamCli; i++){
			para(inteiro j =0; j < 3 ; j++){
				se(nome == clientes[i][2]){
					achou = 's'	
					pacote[0] = clientes[i][j]
					pacote[1] = clientes[i][j+1]
					pacote[2] = clientes[i][j+2]
					pare
				}			
			}			
		}
		se(achou == 's'){
			escreva("Nome: "+ pacote[0] +" "+ pacote[1] + "\n\n")
		}senao{
			escreva("Cliente não cadastrado\n")
			buscaClienteViagem()	
		}	
	}

// Função que pesquisa destino cadastrados e salva no vetor destino	
funcao buscaDestinoViagem(){
		escreva("\n-- Escolha um destino --\n")
		cadeia lugar = ""
		caracter achouLugar = 'n'
		escreva("Digite o nome do Lugar: ")
		leia(lugar)
		para(inteiro i =0; i < tamDes; i++){
			para(inteiro j =0; j < 4 ; j++){
				se(lugar == destinos[i][0]){
					achouLugar = 's'
					pacote[3] = destinos[i][j]
					pacote[4] = destinos[i][j+1]
					pacote[5] = destinos[i][j+2]
					pacote[6] = destinos[i][j+3]
					pare
				}
				
		}
		se(achouLugar == 's'){
			escreva("Lugar: "+ pacote[3] )
			escreva("\nCidade: " + pacote[4])
		}senao{
			escreva("Destino não cadastrado\n")
			buscaDestinoViagem()	
		}	
	}
}

// Função que compra a viagem - inclui o cliente e o destino no vetor pacote	
funcao CompraViagem(){
		
	buscaClienteViagem()
	buscaDestinoViagem()	
	limpa()
	escreva("\n+--------------------------------+")
	escreva("\n Viagem cadastrada com sucesso! \n")
	escreva("+--------------------------------+")
	
	escreva("\nDados do Pacote\n")
	escreva("\nNome Completo: " + pacote[0] + " " + pacote[1])
	escreva("\n")
	
	escreva("Destino")	
	escreva("\nLugar escolhido: "+ pacote[3] +", em "+ pacote[4] + " no " + pacote[5] +".")
	escreva("\n+--------------------------------+\n")
	escreva("\n")
	escreva("Obrigado por escolher a MM VIAGENS.\n\n")
	inicio()	
 }

 
// Função que cria o texto do menu do sistema
funcao menu(){
		escreva("-----------------------[ AGENCIA DE VIAGENS - MM VIAGENS ]--------------------------------------\n\n")
		escreva("Usuario do sistema: "+ usuario[0])
		escreva("\n------------------------------------------------------------------------------------------------\n")
		escreva("\nCadastrar Cliente [1] | Cadastrar Destinos [2] | Pesquisar[3] | Comprar Viagem [4] | Sair [5]\n")
		escreva("\n------------------------------------------------------------------------------------------------\n")
		inteiro opc = 0
		escreva("Escolha o que você quer fazer: ")
		leia(opc)
		se(opc > 5){ limpa() inicio() }
		escolha(opc){
			caso 1:
				limpa()
				cadastrarClientes()
				pare
			caso 2:
				limpa()
				cadastarDestinos()
				pare
			caso 3:
				limpa()
				pesquisar()
				pare
			caso 4:
				limpa()
				CompraViagem()
				pare
			caso 5:
				escreva("Obrigado por usar o sistema!\n")
				pare							
		}	
	}
	
	//Função main -> ponto de partida
	funcao inicio()
	{	
		se(usuario[0] != ""){
			login()
		}senao{
			cadastraUsuario()
		}
		limpa()		
		menu()		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6194; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuario, 8, 8, 7}-{tamDes, 13, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */