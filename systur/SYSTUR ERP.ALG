Algoritmo "systur erp"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :  Marcelo Morais
// Descrição   : Usando conceitos de programação estruturada (Vetor),
//              criar em pseudocódigo um menu para simular um cadastro para uma agência de viagens
//              com as seguintes funções:
//              cadastro de cliente e cadastro de destino,
//              criar também uma consulta para cada estrutura de dados.
// Autor(a)    : Marcelo Morais
// Data atual  : 04/07/2022



procedimento cadastraUsuario // Função de cadastro de usuario
var
nome, usuario, senha : caractere
i, tamSenha : inteiro

inicio

escreval("CADASTRO DE USUARIO DO SISTEMA")
escreva("Digite seu Nome: ")
leia(nome)
escreva("Digite seu Usuario: ")
leia(usuario)
escreva("Digite sua Senha: ")
leia(senha)

tamSenha := Compr(senha)
se tamSenha < 5 entao
repita
   escreval("Senha curta. Minimo de caracteres é 5.")
   escreva("Digite sua Senha: ")
   leia(senha)
   tamSenha := Compr(senha)
ate tamSenha > 4
fimse
limpatela

usuario[1] := nome
usuario[2] := usuario
usuario[3] := senha

limpatela
timer 1500
escreva(".......... ")
escreva("Usuario Cadastrado com Sucesso.")
timer 0
limpatela
entrar
fimprocedimento

procedimento cadastraClientes // Função de cadastro de cliente
var
cod, nome, nascimento, cpf, endereco, cpfTeste : caractere
i, j, qtd, codInt : inteiro
encontrou : logico
inicio

escreval("CADASTRO DE CLIENTES")
escreva("Digite a QUANTIDADE DE CLIENTES deseja cadastrar: ")
leia(qtd)

para i de 1 ate qtd faca
escreva("Nome do Cliente: ")
leia(nome)
escreva("Data de Nascimento do Cliente: ")
leia(nascimento)
escreva("CPF do Cliente: ")
leia(cpf)

para j de 1 ate qtd faca
     se cpf = clientes[j,4] entao
        encontrou := verdadeiro
        cpfTeste := clientes[j,4]
        escreval("CPF "+ cpf +" JÁ CADASTRADO NO SISTEMA.")
        
        se encontrou = verdadeiro entao
        enquanto cpfTeste = cpf faca
                 escreval("Digite outro CPF ")
                 leia(cpf)
        fimenquanto
        fimse
        
     fimse
fimpara


escreva("Endereço do Cliente: ")
leia(endereco)

cod := Numpcarac(i)

clientes[i, 1] := cod
clientes[i, 2] := nome
clientes[i, 3] := nascimento
clientes[i, 4] := cpf
clientes[i, 5] := endereco
limpatela
timer 1500
escreva(".......... ")
escreva("Cliente Cadastrado com Sucesso.")
timer 0
limpatela

fimpara
menuCliente
fimprocedimento

procedimento pesquisaCliente
var
clienteEncontrado : vetor[1..5] de caractere
cpf : caractere
i, opc : inteiro
achado : logico

inicio
escreval("PESQUISAR CLIENTE")
escreval("----------------------------------")
escreva("DIGITE O CPF DO CLIENTE: ")
leia(cpf)
para i de 1 ate 10 faca
     se cpf = clientes[i, 4] entao
        achado := verdadeiro
        clienteEncontrado[1] := clientes[i, 1]
        clienteEncontrado[2] := clientes[i, 2]
        clienteEncontrado[3] := clientes[i, 3]
        clienteEncontrado[4] := clientes[i, 4]
        clienteEncontrado[5] := clientes[i, 5]
        interrompa
     senao
          achado := falso
    fimse
fimpara
  se achado = falso entao
     escreval("Cliente não cadastrado!")
  senao

  escreval("----------------------------------------------")
        timer 1000
        escreval("CODIGO: " + clienteEncontrado[1])
        escreval("NOME: " + clienteEncontrado[2])
        escreval("DATA NASCIMENTO: " + clienteEncontrado[3])
        escreval("CPF: " + clienteEncontrado[4])
        escreval("ENDEREÇO: " + clienteEncontrado[5])
        escreval("----------------------------------------------")
        timer 0

  fimse
escreval("DESEJA FAZER NOVA PESQUISA? [1] SIM | NÃO [2]")
escreva("->> ")
leia(opc)
escolha opc
        caso 1
        pesquisaCliente
        caso 2
        menuCliente
        outrocaso
        escreval("Opção invalida.")
        menuCliente
fimescolha

fimprocedimento

procedimento listarClientes
var
i : inteiro

inicio
 escreval("----[ LISTA DE CLIENTES CADASTADOS ]----")
para i de 1 ate 10 faca
escreval("----------------------------------------------")
timer 500
escreval("----[ " + clientes[i,2] + " ]-----")
escreval("CODIGO: " + clientes[i,1])
escreval("NOME: " + clientes[i,2])
escreval("DATA NASCIMENTO: " + clientes[i,3])
escreval("CPF: " + clientes[i,4])
escreval("ENDEREÇO: " + clientes[i,5])
escreval("----------------------------------------------")
timer 0
fimpara

escreval("Digite F9 para continuar.")
pausa
menuCliente
fimprocedimento

procedimento cadastraDestino   // Função cadastra Destinos
var
cod, destino, cidade, estado, pais : caractere
i, qtd, codInt : inteiro
inicio

escreval("CADASTRO DE DESTINOS")
escreva("Digite a QUANTIDADE DE DESTINOS deseja cadastrar: ")
leia(qtd)
i := 0
para i de 1 ate qtd faca
escreva("DESTINO: ")
leia(destino)
escreva("CIDADE: ")
leia(cidade)
escreva("ESTADO: ")
leia(estado)
escreva("PAIS: ")
leia(pais)

cod := Numpcarac(i)

destinos[i, 1] := cod
destinos[i, 2] := destino
destinos[i, 3] := cidade
destinos[i, 4] := estado
destinos[i, 5] := pais

limpatela
timer 1500
escreva(".......... ")
escreva("Destino Cadastrado com Sucesso.")
timer 0
limpatela

fimpara
menuDestino
fimprocedimento

procedimento pesquisaDestino
var
destinoEncontrado : vetor[1..5] de caractere
destino : caractere
i, opc : inteiro
achado : logico

inicio
escreval("PESQUISAR DESTINO")
escreval("----------------------------------")
escreva("DIGITE O DESTINO: ")
leia(destino)
para i de 1 ate 10 faca
     se destino = destinos[i, 2] entao
        achado := verdadeiro
        destinoEncontrado[1] := destinos[i, 1]
        destinoEncontrado[2] := destinos[i, 2]
        destinoEncontrado[3] := destinos[i, 3]
        destinoEncontrado[4] := destinos[i, 4]
        destinoEncontrado[5] := destinos[i, 5]
        interrompa
     senao
          achado := falso
    fimse
fimpara
  se achado = falso entao
     escreval("Destino não cadastrado!")
  senao
  
  escreval("----------------------------------------------")
        timer 1000
        escreval("CODIGO: " + destinoEncontrado[1])
        escreval("DESTINO: " + destinoEncontrado[2])
        escreval("CIDADE: " + destinoEncontrado[3])
        escreval("ESTADO: " + destinoEncontrado[4])
        escreval("PAÍS: " + destinoEncontrado[5])
        escreval("----------------------------------------------")
        timer 0

  fimse
escreval("DESEJA FAZER NOVA PESQUISA? [1] SIM | NÃO [2]")
escreva("->> ")
leia(opc)
escolha opc
        caso 1
        pesquisaDestino
        caso 2
        menuDestino
        outrocaso
        escreval("Opção invalida.")
        escreval("Digite uma opção valida.")
        menuDestino
fimescolha

fimprocedimento

procedimento listarDestinos
var
i : inteiro

inicio
 escreval("----[ LISTA DE DESTINOS CADASTADOS ]----")
para i de 1 ate 10 faca
escreval("----------------------------------------------")
timer 500
escreval("----[ " + destinos[i,2] + " ]-----")
escreval("CODIGO: " + destinos[i,1])
escreval("DESTINO: " + destinos[i,2])
escreval("CIDADE: " + destinos[i,3])
escreval("ESTADO: " + destinos[i,4])
escreval("PAIS: " + destinos[i,5])
escreval("----------------------------------------------")
timer 0
fimpara

escreval("Digite F9 para continuar.")
pausa
menuDestino
fimprocedimento


procedimento menuCliente // area de clientes
var
opc : inteiro
inicio
escreval("SYSTUR - ERP")
escreval("-------------------------------------")
escreval("CADASTRAR CLIENTE [1] | BUSCAR CLIENTE [2] | LISTAR CLIENTES [3] | VOLTAR [4]")
escreval("-------------------------------------")
escreva("Opção ->>> ")
leia(opc)
limpatela
escolha opc
        caso 1
        cadastraClientes
        caso 2
        pesquisaCliente
        caso 3
        listarClientes
        caso 4
        menu
        outrocaso
        escreval("Opção invalida.")
        menuCliente
fimescolha

fimprocedimento

procedimento menuDestino // area de clientes
var
opc : inteiro
inicio
escreval("SYSTUR - ERP")
escreval("-------------------------------------")
escreval("CADASTRAR DESTINO [1] | BUSCAR DESTINO [2] | LISTAR DESTINOS [3] | VOLTAR [4]")
escreval("-------------------------------------")
escreva("Opção ->>> ")
leia(opc)
limpatela
escolha opc
        caso 1
        cadastraDestino
        caso 2
        pesquisaDestino
        caso 3
        listarDestinos
        caso 4
        menu
        outrocaso
        escreval("Opção invalida.")
        menuDestino
fimescolha

fimprocedimento

procedimento menu
var
opc : inteiro
inicio

escreval("SYSTUR - ERP")
escreval("-------------------------------------")
escreval("CLIENTES [1] | DESTINOS [2] | CADASTRAR USUARIO [3] | SAIR [0]")
escreval("-------------------------------------")
escreval("Usuario: " + usuario[1])
escreva("Opção ->>> ")
leia(opc)
limpatela
escolha opc
        caso 1
        menuCliente
        caso 2
        menuDestino
        caso 3
        cadastraUsuario
        caso 0
        escreva(usuario[1] + " Bye.... Até a proxima!")
        outrocaso
        escreval("Opção invalida")
        menu
fimescolha


fimprocedimento

procedimento entrar  // Função de Login no sistema
var
usuario, senha : caractere
i : inteiro

inicio
escreval("SYSTUR - ERP")
escreval("-------ENTRAR--------")
escreva("Usuario: ")
leia(usuario)
escreval("----------------------------------")
escreva("Senha")
leia(senha)
limpatela
se usuario = usuario[2]  entao
   se senha = usuario[3] entao
      timer 1500
      escreva("SEJA BEM VINDO(A) " + usuario[1] + ".")
      timer 0
      limpatela
      menu
   senao
     escreval("Senha não cadastrada!")
     entrar
   fimse
senao
     escreval("Usuario não cadastrado!")
     entrar
fimse
limpatela
fimprocedimento


Var

clientes : vetor[1..10,1..5] de caractere  // Nome, nascimento, cpf, Endereco
destinos : vetor[1..10,1..5] de caractere  // Destino, cidade, estado, país
usuario : vetor[1..3] de caractere
i, opc : inteiro


Inicio
escreval("SYSTUR - ERP")
escreval()
escreval("-------------------------------------")
escreval("ENTRAR [1] | CADASTRAR USUARIO [2] | SAIR [0]")
escreval("-------------------------------------")
escreva("Opção ->>> ")

leia(opc)
escolha opc
        caso 1
        se usuario[1] = "" entao
           escreval("Nenhum usuario cadastrado.")
           timer 1500
           escreval("Redirecionando para a área de cadastro.")
           timer 1000
           limpatela
           timer 0
           cadastraUsuario
        senao
           entrar
        fimse
        //interrompa
        caso 2
        cadastraUsuario
        //interrompa
        caso 0
        escreva(usuario[1] + " Bye.... Até a proxima!")
        outrocaso
        escreval("Opção invalida")
        entrar
        //interrompa
fimescolha


Fimalgoritmo