Algoritmo "ordem numeros"

Var
   numero : vetor[1..10] de real
   i, j : inteiro
   livre: real

Inicio
   Para i de 1 at� 10 Fa�a
      Escreval("Digite o n�mero da posi��o ", i)
      Leia(numero[i])
   Fimpara

   Para i de 1 at� 9 Fa�a
      Para j de i+1 at� 10 Fa�a
         Se (numero[i] > numero[j]) Ent�o
            livre <- numero[i]
            numero[i] <- numero[j]
            numero[j] <- livre
         Fimse
      Fimpara
   Fimpara
   
   Limpatela()
   
   Para i de 1 at� 10 Fa�a
        Escreval("O n�mero da posi��o ", i, " �: ", numero[i])
   Fimpara
Fimalgoritmo