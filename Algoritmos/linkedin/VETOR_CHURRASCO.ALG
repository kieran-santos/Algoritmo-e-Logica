Algoritmo "CHURRASCO"


Var
   item : vetor[1..3] de caractere
   quantidade : vetor[1..3] de real
   valor_uni : vetor[1..3] de real
   valor_total : vetor[1..3] de real  //vai ser a soma do valor_uni de cada item

   pessoas : real
   valor_individual: real //divis�o do total_churrasco
   total_churrasco: real  //soma dos valor total

   i : inteiro

Inicio

   Escreval("Digite a quantidade de pessoas que ir�o ao churrasco: ")
   Leia(pessoas)

   Para i de 1 at� 3 Fa�a
      Escreval("Digite o nome do item ", i)
      Leia(item[i])
      Escreval("Digite a quantidade do item ", i)
      Leia(quantidade[i])
      Escreval("Digite o valor unit�rio do item " ,i, " em reais")
      Leia(valor_uni[i])

      valor_total[i] <- valor_total[i] + (valor_uni[i] * quantidade[i])
      total_churrasco <- total_churrasco + valor_total[i]

   Fimpara

   Escreval("O valor total de ", i, " �", valor_total[i])

   Escreval("O total a ser pago pelo churrasco �: R$", total_churrasco)

   valor_individual <- total_churrasco/pessoas

   Escreval("O valor a ser pago por pessoa �: ", valor_individual)

   Escreval("Os itens comprados s�o: ")

   Para i de 1 at� 3 Fa�a
      Escreval("Item ", i, " � ", item[i])
   Fimpara

Fimalgoritmo