Algoritmo "Biblioteca_De_Albuns"

procedimento saida(q:inteiro)

inicio

sair <- verdadeiro

fimprocedimento

Var

NF:vetor [1..10] de Caractere // N�mero de Faixas
NA:vetor [1..10,1..2] de Caractere //NA = Nome �rtista / Nome �lbum
//Vari�veis de Controle
simnao:caractere
p,q,menu,loop,enter:Inteiro
sair,repetir,disponivel:logico

Inicio

//Loop
Enquanto sair = falso faca
//Loop

//Menu de Escolha
Limpatela
Escreval("-BIBLIOTECA DE �LBUNS-")
Escreval()
Escreval("1) Exibir �lbuns Cadastrados")
Escreval()
Escreval("2) Editar �lbuns")
Escreval()
Escreval("3) Encerrar Programa")
Escreval()
leia(menu)
limpatela

Escolha menu

 Caso 1
 
  q <- 0
 
  para p de 1 ate 10 faca //Verifica��o sobre a exist�ncia de albuns
 
  Se (NA[p,1] = "") e (NA[p,2] = "") e (NF[p] = "") Ent�o

  q <- (q + 1)
  
  senao
  
  q <- -100

  fimse //Se a verifica��o der errado(for pro senao) uma vez, quer dizer
  //que existe alguma informa��o cadastrada, e como o verificador abaixo
  //procura ver se q � maior que 0, q � colocado como um n�mero muito baixo
  //para n�o correr o risco de ir al�m de 0 e dar como 'nenhum cadastrado'
  fimpara
  
  se (q > 0) entao
  
  Escreval("N�o h� cadastro ainda.")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
 
  senao
 
  Para q de 1 ate 10 faca
 
  Escreval("Artista: ",NA[q,1])
  Escreval("�lbum: ",NA[q,2])
  Escreval("Faixas: ",NF[q])
  Escreval()
 
  fimpara

  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
 
  fimse //fimse da verifica��o
 
 Caso 2
 
  repetir <- verdadeiro
 
  Enquanto repetir = verdadeiro faca //Loop do segundo men�
 
  Escreval("-SELECIONE UMA A��O-")
  Escreval()
  Escreval("1) Cadastrar �lbuns")
  Escreval()
  Escreval("2) Cadastrar em Slot Espec�fico")
  Escreval()
  Escreval("3) Verificar Disponibilidade")
  Escreval()
  Escreval("4) Voltar ao Men� Principal")
  Escreval()
  leia(menu)
  limpatela
 
   Se menu = 1 entao //Tive de substituir o Escolha daqui pelo Se
   //pois n�o estava funcionando de maneira alguma :c
 
   //cadastro geral

   Escreval("Continuar esta opera��o ir� sobrescrever outros �lbuns")
   Escreval()
   Escreval("Deseja continuar ? (S/N)")
   Escreval
   Leia(simnao)
   limpatela
 
   Se (simnao = "s") ou (simnao = "sim") ou (simnao = "Sim") ou (simnao = "S") entao

   para p de 1 ate 10 faca
 
   Escreva("Digite um Nome para o Artista de N�",P,": ")
   Leia(NA[p,1])
   
   Escreva("Digite um Nome para o �lbum desse Artista: ")
   Leia(NA[p,2])
   
   Escreva("Digite quantas m�sicas esse �lbum cont�m: ")
   Leia(NF[p])
   limpatela

   fimpara
 
   fimse
   
   fimse //Vulgo Caso 1
   
   Se menu = 2 entao
   
   Escreval("Qual �lbum deseja modificar?")
   Escreval()
   
   Para p de 1 ate 10 faca
   
   Escreval(P," ",NA[p,2])
   
   fimpara
   
   Escreval()
   leia(p)
   
   limpatela
   
   Escreva("Digite um Nome para o Artista de N�",P,": ")
   Leia(NA[p,1])

   Escreva("Digite um Nome para o �lbum desse Artista: ")
   Leia(NA[p,2])

   Escreva("Digite quantas m�sicas esse �lbum cont�m: ")
   Leia(NF[p])
   limpatela
   
   fimse // Vulgo Caso 2
   
   Se menu = 3 entao
 
   //Verifica��o de disponibilidade
   
   disponivel <- falso
 
   Para q de 1 ate 10 faca
 
    Se (NA[q,1] = "") e (NA[q,2] = "") e (NF[q] = "") Ent�o
 
    Escreval("Slot",q," Dispon�vel")

    disponivel <- verdadeiro
 
    Fimse
 
   fimpara
   
   Se disponivel = Falso entao
   
   Escreval("N�o h� espa�o vazio dispon�vel")
   
   fimse
  
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
  
  fimse //Vulgo Caso 3

  Se menu = 4 entao

  //Volta ao men� anterior
 
  repetir <- falso
  
  fimse //Vulgo Caso 4
 
  Se (menu <> 1) e (menu <> 2) e (menu <> 3) e (menu <> 4) entao
 
  Escreval("Op��o Inv�lida")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
  
  Fimse //Vulgo Outrocaso

 Fimenquanto //Fim do repetir (Caso 1 - 2)
 
 Caso 3
 
 saida(1)
 
 outrocaso

  Escreval("Op��o Inv�lida")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela

Fimescolha //Loop

//Loop
Fimenquanto
//Loop

Fimalgoritmo