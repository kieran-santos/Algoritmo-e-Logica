Algoritmo "FUNCAO_IMC"



Var

Funcao calcular_imc() : real //declarando a fun��o
Var
   peso, altura : real

Inicio
   Escreval("Qual sua altura?")
   Leia(altura)
   Escreval("Qual seu peso?")
   Leia(peso)
   RETORNE peso / (altura * altura)
FimFun��o

Inicio
   Escreval("Seu IMC �: ", calcular_imc())

Fimalgoritmo