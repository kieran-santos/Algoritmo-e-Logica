Algoritmo "FUNCAO_IMC"



Var

Funcao calcular_imc() : real //declarando a função
Var
   peso, altura : real

Inicio
   Escreval("Qual sua altura?")
   Leia(altura)
   Escreval("Qual seu peso?")
   Leia(peso)
   RETORNE peso / (altura * altura)
FimFunção

Inicio
   Escreval("Seu IMC é: ", calcular_imc())

Fimalgoritmo