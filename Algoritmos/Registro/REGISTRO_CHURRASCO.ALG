Algoritmo "REGISTRO_CHURRASCO"

Tipo ingrediente = registro
   nome: caracter
   qnt: real
   valorUnit: real
   valorTotal: real
Fimregistro


Var
   itens: vetor[1..100] de ingrediente

   i, qnt_pessoas : inteiro
   valor_individual, custo_total : real
   add_mais : caracter

Inicio
   Escreval("Quantas pessoas v�o ao churrasco? ")
   Leia(qnt_pessoas)

   Para i de 1 at� 100 Fa�a
      Escreval("Digite o nome do item")
      Leia(itens[i].nome)
      Escreval("Digite a quantidade")
      Leia(itens[i].qnt)
      Escreval("Digite o valor da unidade")
      Leia(itens[i].valorUnit)

      itens[i].valorTotal <- itens[i].qnt*itens[i].valorUnit[i]
      custo_total <- custo_total+itens[i].valorTotal

      Escreval("Add mais? S/n: ")
      Leia(add_mais)

      Se(add_mais = "n") Ent�o
         interrompa
      Fimse
   Fimpara

   valor_individual <- custo_total/qnt_pessoas
   limpatela()

   Para i de 1 at� 100 Fa�a
      Se (itens[i].nome <> "") Ent�o
         Escreval("Os itens s�o")
         Escreval("-----------------------------")
         Escreval(i)
         Escreval("Item: ", itens[i].nome)
         Escreval("Quantidade: ", itens[i].qnt)
         Escreval("Valor Unidade: ", itens[i].valorUnit:2:2)
         Escreval("Total do item: ", itens[i].valorTotal:2:2)
         Escreval(" ")
      Fimse
   Fimpara

   Escreval("O total a pagar �: ", custo_total)
   Escreval("O total por indiv�duo a pagar �: ", valor_individual)
   Escreval("-----------------------------")


Fimalgoritmo