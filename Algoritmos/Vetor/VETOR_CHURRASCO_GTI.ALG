Algoritmo "VETOR_CHURRASCO"

Var
   item : vetor[1..10] de caracter
   qnt : vetor[1..10] de real
   valor_unit : vetor[1..10] de real
   total_unit : vetor[1..10] de real
   i, qnt_pessoas : inteiro
   valor_individual, custo_total : real
   add_mais : caracter
Inicio

   Escreval("Quantas pessoas vão ao churrasco? ")
   Leia(qnt_pessoas)

   Para i de 1 até 10 Faça
      Limpatela()
      Escreva("Qual é o item: ")
      Leia(item[i])
      Escreva("Qual é a quantidade: ")
      Leia(qnt[i])
      Escreva("Qual é o Valor Unitário: ")
      Leia(valor_unit[i])
      total_unit[i] <- qnt[i] * valor_unit[i]
      custo_total <- custo_total + total_unit[i]
      valor_individual <- custo_total / qnt_pessoas

      Escreval("--------------------------")
      Escreval("Total até agora: R$", custo_total)
      Escreval("Total Individual: R$", valor_individual)

      Escreval("Add mais? S/n: ")
      Leia(add_mais)

      Se(add_mais = "n") Então
         interrompa
      Fimse
   Fimpara

   Limpatela()
   Escreva(" i")
   Escreva(" ITEM")
   Escreva("   QNT")
   Escreva("  V_U")
   Escreval("   V_T")
   
   Para i de 1 até 10 Faça
      Se (item[i] <> "") Então
         Escreva(i)
         Escreva(" ", item[i])
         Escreva(" ", qnt[i])
         Escreva(" ", valor_unit[i]:2:2)
         Escreval(" ", total_unit[i]:2:2)
      Fimse
   Fimpara

Fimalgoritmo