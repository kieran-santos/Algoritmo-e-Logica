Algoritmo "FUNCAO_CARRINHO"



Tipo Produto = registro
   nome : caracter
   qnt, v_u, v_t : real
Fimregistro



Var
   item : vetor[1..10] de Produto
   opcao, total_itens, i, posicao, rem : inteiro
   sn : caracter



Funcao dinheiro(valor : real) : caracter
Var
   tmp : caracter
Inicio
   tmp <- "R$" + numpcarac(valor)
   Retorne tmp
Fimfuncao



Procedimento ver_carrinho()
Inicio
   Para i de 1 até 10 Faça
      Se(item[i].nome="")Então
         Escreval("-------------------")
         Interrompa
      Fimse
      Escreval("Os itens são: ")
      Escreval(i, "__NOME__  __QNT__  __V_U__  __V_T__")
      Escreval(item[i].nome, "       ", item[i].qnt, "       ", item[i].v_u, "       ", item[i].v_t, "  ")
   Fimpara
Fimprocedimento




Procedimento adc_item()
Inicio
   Para i de 1 até 10 Faça
      Escreval("Digite o nome do item")
      Leia(item[i].nome)
      Escreval("Digite a quantidade")
      Leia(item[i].qnt)
      Escreval("Digite o valor do item")
      Leia(item[i].v_u)

      item[i].v_t <- item[i].v_u*item[i].qnt

      Escreval("Adicionar mais itens? s ou n")
      Leia(sn)

      Se(sn="n")Então
         Interrompa
      Fimse
   Fimpara
Fimprocedimento


Procedimento atualizar()
Inicio
   Escreval("Digite a posição: ")
   Leia(posicao)
   Escreval("Digite o novo nome: ")
   Leia(item[posicao].nome)
   Escreval("Digite a quantidade: ")
   Leia(item[posicao].qnt)
   Escreval("Digite o valor: ")
   Leia(item[posicao].v_u)
   item[posicao].v_t <- item[posicao].v_t * item[posicao].qnt
Fimprocedimento

Procedimento remover_item()
Inicio
   Escreval("Digite a posição do item que deseja remover")
   Leia(posicao)
   Escreval("Digite a quantidade que deseja remover")
   Leia(rem)

   item[posicao].qnt <- item[posicao].qnt - rem

   Se(item[posicao].qnt=0)Então
      item[posicao].nome <- ""
      item[posicao].qnt <- 0
      item[i].v_u <- 0
      item[i].v_t <- 0
   Fimse
Fimprocedimento

Inicio

   Repita
      Escreval("")
      Escreval("Carrinho de compras")
      Escreval("Escolha uma opção do menu")
      Escreval("1 - Ver carrinho")
      Escreval("2 - Adicionar item")
      Escreval("3 - Atualizar lista")
      Escreval("4 - Remover item")
      Escreval("0 - Sair")
      Leia(opcao)

      Escolha(opcao)
      Caso 0
         Interrompa

      Caso 1
         ver_carrinho()

      Caso 2
         adc_item()

      Caso 3
         atualizar()

      Caso 4
         remover_item()
      
      Caso 0
         Escreval("O total a ser pago é: ", dinheiro())
         Interrompa

      Fimescolha
         
   Ate(opcao=0)



Fimalgoritmo