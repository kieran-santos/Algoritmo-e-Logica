Algoritmo "vetor_notas"


Var
   nota : vetor[1..7] de real
   i: inteiro

Inicio

   //Exemplo de como funciona o vetor
   Escreval("Informe a nota do primeiro aluno")
   Leia(nota[1])

   Escreval("Voc� digitou a nota: ", nota[1])

   //Abastecendo o vetor
   Para i de 1 at� 7 Fa�a
      Escreva("Informe a nota da posi��o", i, ":")
      Leia (nota[i])
   Fimpara



Fimalgoritmo