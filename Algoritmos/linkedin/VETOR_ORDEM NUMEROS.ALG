Algoritmo "ordem numeros"

Var
   numero : vetor[1..10] de real
   i, j : inteiro
   livre: real

Inicio
   Para i de 1 até 10 Faça
      Escreval("Digite o número da posição ", i)
      Leia(numero[i])
   Fimpara

   Para i de 1 até 9 Faça
      Para j de i+1 até 10 Faça
         Se (numero[i] > numero[j]) Então
            livre <- numero[i]
            numero[i] <- numero[j]
            numero[j] <- livre
         Fimse
      Fimpara
   Fimpara
   
   Limpatela()
   
   Para i de 1 até 10 Faça
        Escreval("O número da posição ", i, " é: ", numero[i])
   Fimpara
Fimalgoritmo