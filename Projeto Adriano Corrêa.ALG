Algoritmo "Projeto_01"

Var

Timing:vetor [0..3,0..60] de inteiro
Menu,Loop,Receita:Inteiro
//Variáveis de controle
p,q,enter:inteiro
SimNao:Caractere

Inicio

Loop <- 1

Enquanto Loop = 1 Faca
//Menú de Escolha
Limpatela
Escreval("-ESCOLHA UMA RECEITA-")
Escreval()
Escreval("1) Miojo / Lámen")
Escreval()
Escreval("2) Frango Empanado")
Escreval()
Escreval("3) Suflê de Cenoura")
Escreval()
leia(receita)

Escolha Receita
 Caso 1 //Receita de Miojo

 Limpatela

 Escreval("-VOCÊ VAI PRECISAR DE:- ")
 Escreval()
 Escreval("• Uma panela mediana")
 Escreval()
 Escreval("• Aproximadamente 450ml (Dois copos) de Água")
 Escreval()
 Escreval("• Um pacote de Miojo do sabor desejado")
 Escreval()
 Escreval("Deseja Prosseguir? (S/N)")
 Escreval()
 Leia(simnao)
 limpatela
 
 Se (simnao = "s") ou (simnao = "sim") ou (simnao = "Sim") ou (simnao = "S") entao

  Escreval("Coloque a água e o miojo na panela")
  Escreval()
  Escreval("Em seguida, leve a panela ao fogo alto e espere ferver")
  Escreval()
  Escreval("Deseja ativar o cronômetro de 3 minutos? (S/N)")
  Escreval()
  leia(simnao)
  limpatela
   
  Se (simnao = "s") ou (simnao = "sim") ou (simnao = "Sim") ou (simnao = "S") entao

   Timer 5 // (500) 0.5 Segundo para cada comando
    
   para p de 0 ate 2 faca
    para q de 0 ate 60 faca
     
    Escreval("Cronômetro: [",p," .",q," ]")
     
    Timer 0 //Comando não deve consumir tempo no timer, então durante essa linha ele será 0
     
    se (q % 10 = 0) e (q <> 0) entao
    limpatela
    fimse
     
    Timer 5
     
   fimpara
  fimpara
   
  //Ajeitando Valor Final do Timer
  Timer 0
  q <- 0
  p <- 3

  Escreval("Cronômetro Finalizado: [",p," .",q,"0 ]")
  Escreval()
  Escreval("APERTE ENTER PARA CONTINUAR")
  leia(Enter)
  limpatela
   
 fimse //fimse do timer
   
 Escreval("Após o tempo estabelecido, ")
 Escreval()
 Escreval("E espere mais 3 minutos")
 Escreval()
 Escreval("Deseja ativar o cronômetro de 3 minutos? (S/N)")
 Escreval()
 leia(simnao)
 
 senao
  
 Escreval("Deseja ver outra receita? (S/N)")
 leia(simnao)
  
  Se (simnao = "s") ou (simnao = "sim") ou (simnao = "Sim") ou (simnao = "S") entao
   
  loop <- 1
   
  senao
   
  loop <- 0
   
  fimse
 fimse

fimescolha

fimenquanto

Fimalgoritmo