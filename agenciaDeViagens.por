//Usando conceitos de programação estruturada (Vetor), criar em pseudocódigo 
//um menu para simular um cadastro para uma agência de viagens com as seguintes 
//funções: cadastro de cliente e cadastro de destino, criar também uma consulta para cada estrutura de dados. 

programa
{
	
	cadeia destinos[10][4] // estrutura de dados - Dados Destino - Lugar, Cidade, estado, país
	cadeia clientes[10][3]// estrutura de dados - Dados Cliente - Nome, Sobrenome, cidade
	cadeia pacote[7]
	inteiro tamCli = 0	
	inteiro tamDes = 0
	cadeia cliente[3]
	cadeia destino[4]
	
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
			inicio()
		}
		
	}

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
			inicio()
		}
	}


	funcao pesquisarCliente(){
		
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o nome do Cliente: ")
		leia(nome)
		para(inteiro i =0; i < tamCli; i++){
			para(inteiro j =0; j < 3 ; j++){
				se(nome == clientes[i][j]){
					achou = 's'
					//escreva("Nome: "+ clientes[i][j])
					//escreva("\nSobrenome: "+ clientes[i][j])
					//escreva("\nCidade: "+ clientes[i][j])
					cliente[j] = clientes[i][j]
					cliente[j+1] = clientes[i][j+1]
					cliente[j+2] = clientes[i][j+2]
					
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
	

	funcao pesquisarDestino(){
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o nome do Lugar: ")
		leia(nome)
		para(inteiro i =0; i < tamDes; i++){
			para(inteiro j =0; j < 4 ; j++){
				se(nome == destinos[i][j]){
					achou = 's'
					//escreva("Lugar: "+ destinos[i][j])
					//escreva("\nCidade: "+ destinos[i][j])
					//escreva("\nEstado: "+ destinos[i][j])	
					//escreva("\nPaís: "+ destinos[i][j])

					destino[j] = destinos[i][j]
					destino[j+1] = destinos[i][j+1]
					destino[j+2] = destinos[i][j+2]

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
			inicio()
		}senao{
			escreva("Opção invalida!! \n")
			pesquisar()
		}
	}

	funcao buscaClienteViagem(){
		escreva("-- Escolha um cliente --\n\n")
		cadeia nome = ""
		caracter achou = 'n'
		escreva("Digite o nome do Cliente: ")
		leia(nome)
		para(inteiro i =0; i < tamCli; i++){
			para(inteiro j =0; j < 3 ; j++){
				se(nome == clientes[i][j]){
					achou = 's'
					//escreva("Nome: "+ clientes[i][j])
					//escreva("\nSobrenome: "+ clientes[i][j+1])
					//escreva("\nCidade: "+ clientes[i][j+2])
					//salva cliente	
					pacote[0] = clientes[i][j]
					pacote[1] = clientes[i][j+1]
					pacote[2] = clientes[i][j+2]
					
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

	funcao buscaDestinoViagem(){
		escreva("\n-- Escolha um destino --\n")
		cadeia lugar = ""
		caracter achouLugar = 'n'
		escreva("Digite o nome do Lugar: ")
		leia(lugar)
		para(inteiro i =0; i < tamDes; i++){
			para(inteiro j =0; j < 4 ; j++){
				se(lugar == destinos[i][j]){
					achouLugar = 's'
					//escreva("Lugar: "+ destinos[i][j])
					//escreva("\nCidade: "+ destinos[i][j+1])
					//escreva("\nEstado: "+ destinos[i][j+2])	
					//escreva("\nPaís: "+ destinos[i][j+3])

					pacote[3] = destinos[i][j]
					pacote[4] = destinos[i][j+1]
					pacote[5] = destinos[i][j+2]
					pacote[6] = destinos[i][j+3]
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
	
	funcao CompraViagem(){
		
	buscaClienteViagem()
	buscaDestinoViagem()	
	limpa()
	escreva("\n+--------------------------------+")
	escreva("\n Viagem cadastrada com sucesso! \n")
	escreva("+--------------------------------+")
	
	escreva("\nDados do Cliente\n")
	escreva("\nNome Completo: " + pacote[0] + " " + pacote[1])
	escreva("\n+--------------------------------+\n")
	
	escreva("\nDados do Destino\n")	
	escreva("\nLugar escolhido: "+ pacote[3] +", em "+ pacote[4] + " no " + pacote[5] +".")
	escreva("\n+--------------------------------+\n")
	escreva("\n")
	escreva("Obrigado por escolher a MM VIAGENS.\n")

	
 }

	funcao escreveMenu(){
		escreva("AGENCIA DE VIAGENS - MM VIAGENS\n")
		escreva("---------------------------------------------\n")
		escreva("\nCadastrar Cliente [1] | Cadastrar Destinos [2] | Pesquisar[3] | Comprar Viagem [4] | Sair [5]\n")
		escreva("\n---------------------------------------------\n")	
	}
	
	funcao inicio()
	{	
		
		escreveMenu()
		
		inteiro menu = 0
		escreva("Escolha o que você quer fazer: ")
		leia(menu)
		se(menu > 5){ limpa() inicio() }
		escolha(menu){
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
				escreva("Comprar Viagem\n")
				CompraViagem()
				pare
			caso 5:
				escreva("Obrigado por usar o sistema!\n")
				pare							
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3404; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {destinos, 8, 8, 8}-{clientes, 9, 8, 8}-{tamCli, 11, 10, 6}-{tamDes, 12, 9, 6}-{cliente, 13, 8, 7}-{i, 131, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */