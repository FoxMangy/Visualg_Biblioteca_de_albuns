# Visualg_Biblioteca_de_albuns
Mini Projeto pedido pelo professor Bruno (ETEJK/FAETEC)
#Mesmo código no arquivo .ALG 
#Copiei em TXT pra ficar mais bonito pro git

#Nos foi requerido o uso de uma estrutura Se ... Então / Para / Vetor / Matriz / Função e Procedimento

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Algoritmo "Biblioteca_De_Albuns"

procedimento saida(q:inteiro)

inicio

sair <- verdadeiro

fimprocedimento

Var

NF:vetor [1..10] de Caractere // Número de Faixas
NA:vetor [1..10,1..2] de Caractere //NA = Nome Ártista / Nome Álbum
//Variáveis de Controle
simnao:caractere
p,q,menu,loop,enter:Inteiro
sair,repetir,disponivel:logico

Inicio

//Loop
Enquanto sair = falso faca
//Loop

//Menu de Escolha
Limpatela
Escreval("-BIBLIOTECA DE ÁLBUNS-")
Escreval()
Escreval("1) Exibir Álbuns Cadastrados")
Escreval()
Escreval("2) Editar Álbuns")
Escreval()
Escreval("3) Encerrar Programa")
Escreval()
leia(menu)
limpatela

Escolha menu

 Caso 1
 
  q <- 0
 
  para p de 1 ate 10 faca //Verificação sobre a existência de albuns
 
  Se (NA[p,1] = "") e (NA[p,2] = "") e (NF[p] = "") Então

  q <- (q + 1)
  
  senao
  
  q <- -100

  fimse //Se a verificação der errado(for pro senao) uma vez, quer dizer
  //que existe alguma informação cadastrada, e como o verificador abaixo
  //procura ver se q é maior que 0, q é colocado como um número muito baixo
  //para não correr o risco de ir além de 0 e dar como 'nenhum cadastrado'
  fimpara
  
  se (q > 0) entao
  
  Escreval("Não há cadastro ainda.")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
 
  senao
 
  Para q de 1 ate 10 faca
 
  Escreval("Artista: ",NA[q,1])
  Escreval("Álbum: ",NA[q,2])
  Escreval("Faixas: ",NF[q])
  Escreval()
 
  fimpara

  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
 
  fimse //fimse da verificação
 
 Caso 2
 
  repetir <- verdadeiro
 
  Enquanto repetir = verdadeiro faca //Loop do segundo menú
 
  Escreval("-SELECIONE UMA AÇÃO-")
  Escreval()
  Escreval("1) Cadastrar Álbuns")
  Escreval()
  Escreval("2) Cadastrar em Slot Específico")
  Escreval()
  Escreval("3) Verificar Disponibilidade")
  Escreval()
  Escreval("4) Voltar ao Menú Principal")
  Escreval()
  leia(menu)
  limpatela
 
   Se menu = 1 entao //Tive de substituir o Escolha daqui pelo Se
   //pois não estava funcionando de maneira alguma :c
 
   //cadastro geral

   Escreval("Continuar esta operação irá sobrescrever outros álbuns")
   Escreval()
   Escreval("Deseja continuar ? (S/N)")
   Escreval
   Leia(simnao)
   limpatela
 
   Se (simnao = "s") ou (simnao = "sim") ou (simnao = "Sim") ou (simnao = "S") entao

   para p de 1 ate 10 faca
 
   Escreva("Digite um Nome para o Artista de N°",P,": ")
   Leia(NA[p,1])
   
   Escreva("Digite um Nome para o Álbum desse Artista: ")
   Leia(NA[p,2])
   
   Escreva("Digite quantas músicas esse Álbum contém: ")
   Leia(NF[p])
   limpatela

   fimpara
 
   fimse
   
   fimse //Vulgo Caso 1
   
   Se menu = 2 entao
   
   Escreval("Qual álbum deseja modificar?")
   Escreval()
   
   Para p de 1 ate 10 faca
   
   Escreval(P," ",NA[p,2])
   
   fimpara
   
   Escreval()
   leia(p)
   
   limpatela
   
   Escreva("Digite um Nome para o Artista de N°",P,": ")
   Leia(NA[p,1])

   Escreva("Digite um Nome para o Álbum desse Artista: ")
   Leia(NA[p,2])

   Escreva("Digite quantas músicas esse Álbum contém: ")
   Leia(NF[p])
   limpatela
   
   fimse // Vulgo Caso 2
   
   Se menu = 3 entao
 
   //Verificação de disponibilidade
   
   disponivel <- falso
 
   Para q de 1 ate 10 faca
 
    Se (NA[q,1] = "") e (NA[q,2] = "") e (NF[q] = "") Então
 
    Escreval("Slot",q," Disponível")

    disponivel <- verdadeiro
 
    Fimse
 
   fimpara
   
   Se disponivel = Falso entao
   
   Escreval("Não há espaço vazio disponível")
   
   fimse
  
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
  
  fimse //Vulgo Caso 3

  Se menu = 4 entao

  //Volta ao menú anterior
 
  repetir <- falso
  
  fimse //Vulgo Caso 4
 
  Se (menu <> 1) e (menu <> 2) e (menu <> 3) e (menu <> 4) entao
 
  Escreval("Opção Inválida")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela
  
  Fimse //Vulgo Outrocaso

 Fimenquanto //Fim do repetir (Caso 1 - 2)
 
 Caso 3
 
 saida(1)
 
 outrocaso

  Escreval("Opção Inválida")
  Escreval()
  Escreval("Aperte Enter para prosseguir.")
  leia(enter)
  limpatela

Fimescolha //Loop

//Loop
Fimenquanto
//Loop

Fimalgoritmo
