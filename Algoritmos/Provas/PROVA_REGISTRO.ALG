Algoritmo "PROVA"
// loja  de  roupas.
//No sistema ser� poss�vel navegar atrav�s de um menu para:
//1)Ver os itens e quantidades dispon�veis no estoque;
//2)Realizar vendas dos itens dispon�veis no estoque;
//3)Fazer o recebimento de uma venda;
//4)Sair do sistema.


// tomar como base que:
//a)Os itens, pre�os e quantidades dispon�veis ser�o vetores e seus valores j�
// estar�o predefinidos no sistema.

//b)Para o registro da venda dever� ser informado o nome do cliente,
//telefone, forma de pagamento. Os itens da venda feita dever�o ser armazenados
// em um vetor.

//c)Ao fazer o recebimento de uma venda,apresentar todos os dados da venda
//e se o cliente for pagar em dinheiro, conceder desconto de 10% sobre o valor
//total.

//d)N�o dever�o ser aceitas quantidades negativas de produtos.

//e)Comentem o c�digo fonte, explicando cada trecho e o porqu�da escolha das
//estruturasno algoritmo.


Var
   item : vetor[1..3] de caractere //as categorias de itens escolhidas foram 3 (camiseta, cal�a e sapato), mas podem ser modificadas de acordo com o estoque da loja (a� ser� preciso o n�mero seja modificado em todo o programa)
   preco : vetor[1..3] de real      //vari�vel que define o pre�o de cada produto
   qnt_dsp : vetor[1..3] de inteiro   //define a quantidade dispon�vel de cada item
   item_vendido : vetor[1..3] de caractere    //aqui foi decidido que s� podem ser vendidos 3 itens por venda
   qnt_item_vendido : vetor[1..3] de inteiro  //essa vari�vel delimita que o cliente s� pode pedir 3 tipos de itens (de acordo com os tipos de itens dispon�veis)
   forma_pagamento : vetor[1..4] de caractere  //dinheiro, pix, cr�dito, d�bito
   valor_item_vendido :vetor[1..3] de real

   i : inteiro
   n : inteiro    //essa � a vari�vel de controle do n�mero do item na venda
   j : inteiro    //essa � a vari�vel de controle do n�mero do pedido na venda

   opcao : inteiro       //op��o do menu
   sn : caractere        //op��o sim ou n�o para continuar o sistema
   ns : caractere

   pagamento : inteiro             //n�mero digitado no input (1, 2, 3 ou 4), que ir� definir qual posi��o do vetor forma_pagamento ser� apresentado no final da compra
   nome_cliente : caractere
   telefone_cli : caractere        //telefone como caractere e n�o n�mero inteiro pois n�o ser� realizado c�lculos com este n�mero
   total : real                    //soma dos produtos escolhidos, ou n�mero digitado pelo funcion�rio
   total_desconto : real           //total com desconto de 10% em dinheiro


Inicio

   Repita
      Escreval("Digite 1 para ver os itens e quantidades dispon�veis no estoque")
      Escreval("Digite 2 para realizar uma venda")
      Escreval("Digite 3 para fazer o recebimento de uma venda")
      Escreval("Digite 4 para sair do sistema")
      Leia(opcao)

      item[1] <- "camiseta"   //VALORES J� DEFINIDOS DOS PRODUTOS
      item[2] <- "cal�a"      //itens da loja
      item[3] <- "sapato"

      preco[1] <- 50
      preco[2] <- 100         //pre�os dos itens
      preco[3] <- 70

      qnt_dsp[1] <- 6
      qnt_dsp[2] <- 5         //quantidade dos itens
      qnt_dsp[3] <- 10

      forma_pagamento[1] <- "dinheiro"
      forma_pagamento[2] <- "pix"
      forma_pagamento[3] <- "cart�o de cr�dito"     //forma de pagamento, que vai variar de acordo com a op��o escolhida
      forma_pagamento[4] <- "cart�o de d�bito"

      Se (opcao=1) Ent�o
         limpatela()
         Escreval("Os itens s�o: ")
         Para i de 1 at� 3 Fa�a
            Escreval(item[i])                  //Escolhemos utilizar o para pois caso haja muitos itens seria trabalhoso demais colocar item por item no Escreval
         Fimpara

         Escreval("---------------------------------------------")

         Para i de 1 at� 3 Fa�a
            Escreval("A quantidade dispon�vel de ", item[i], "s", " �: ", qnt_dsp[i], ". Valor: R$:", preco[i])
         Fimpara
      Fimse

      Repita
         Se (opcao=2) Ent�o
            limpatela()
            Escreval("Digite o nome do cliente: ")
            Leia(nome_cliente)
            Escreval("Digite o telefone do cliente: ")
            Leia(telefone_cli)

            limpatela()

            Escreval("Os itens dispon�veis s�o: ")
            Para i de 1 at� 3 Fa�a
               Escreval(i, ": ", item[i])
            Fimpara

            Escreval("A quantidade dispon�vel de cada item �: ")
            Para i de 1 at� 3 Fa�a
               Escreval(i, ": ", qnt_dsp[i])
            Fimpara

            Escreval("O pre�o de cada item �: ")
            Para i de 1 at� 3 Fa�a
               Escreval(i, ": ", preco[i])
            Fimpara

            Repita
               Para j de 1 at� 3 Fa�a
                  Escreval("Digite o n�mero do item escolhido: ")
                  Leia(n)

                  item_vendido[j] <- item[n]

                  Repita
                     Escreval("Digite a quantidade deste item: ")
                     Leia(qnt_item_vendido[j])

                     Se (qnt_item_vendido[j] < 1) ou (qnt_item_vendido[j] > qnt_dsp[n]) Ent�o
                        Escreval("Op��o inv�lida")
                     Fimse

                  At�  (qnt_item_vendido[j] >=1) e (qnt_item_vendido[j] <= qnt_dsp[n])

                  valor_item_vendido[j] <- preco[n]*qnt_item_vendido[j]
                  total <- total + preco[n]*qnt_item_vendido[j]
                  qnt_dsp[n] <- qnt_dsp[n]-qnt_item_vendido[j]

                  Escreval("Escolher outro item? 's' para sim e 'n' para n�o")
                  Leia(sn)

                  Se(sn<>"s") e (sn<>"n") Ent�o
                     Repita
                        Escreval("Op��o inv�lida")
                        Escreval("Escolher outro item? 's' para sim e 'n' para n�o")
                        Leia(sn)
                     Ate (sn="s") ou (sn="n")
                  Fimse

                  Se (sn="n") Ent�o
                     limpatela()

                     Escreval("O total da compra �: ", total)

                     Escreval(" ")

                     Escreval("Digite a forma de pagamento: ")
                     Escreval("1 para dinheiro")
                     Escreval("2 para pix")
                     Escreval("3 para cart�o de cr�dito")
                     Escreval("4 para cart�o de d�bito")
                     Leia(pagamento)

                     Se (pagamento=1) Ent�o
                        total_desconto <- total*0.9
                        Escreval("Seu total com desconto � R$", total_desconto)
                     Fimse

                     limpatela()

                     Escreval("DADOS DA VENDA: ")
                     Escreval("Nome do(a) cliente: ", nome_cliente)
                     Escreval("Telefone do(a) cliente: ", telefone_cli)
                     Escreval("Forma de pagamento: ", forma_pagamento[pagamento])
                     Se (pagamento=1) Ent�o
                        Escreval("O total da compra � R$", total_desconto)
                     Sen�o
                        Escreval("O total da compra � R$", total)
                     Fimse

                     Escreval("")
                     Escreval("Deseja fazer outra compra? 's' para sim e 'n' para n�o")
                     Leia(ns)

                     Se(ns="s") Ent�o
                        j <- 4
                        sn <- "n"
                     Sen�o
                        Interrompa
                     Fimse
                  Fimse
               Fimpara
            At� (sn="n")

            Se (sn="n") Ent�o
               Interrompa
            Fimse
         Fimse
      At�(ns="n")

      Se(opcao=3) Ent�o
         Escreval("Digite o total da compra: ")
         Leia(total)
         Escreval("Digite o nome do cliente: ")
         Leia(nome_cliente)
         Escreval("Digite o telefone do cliente")
         Leia(telefone_cli)

         Escreval(" ")

         Escreval("Digite a forma de pagamento: ")
         Escreval("1 para dinheiro")
         Escreval("2 para pix")
         Escreval("3 para cart�o de cr�dito")
         Escreval("4 para cart�o de d�bito")
         Leia(pagamento)

         Se (pagamento=1) Ent�o
            total_desconto <- total*0.9
         Fimse

         limpatela()

         Escreval("DADOS DA VENDA: ")
         Escreval("Nome do(a) cliente: ", nome_cliente)
         Escreval("Telefone do(a) cliente: ", telefone_cli)
         Escreval("Forma de pagamento: ", forma_pagamento[pagamento])
         Se (pagamento=1) Ent�o
            Escreval("O total da compra com desconto � R$", total_desconto)
         Sen�o
            Escreval("O total da compra � R$", total)
         Fimse
         Interrompa
      Fimse

      Se (opcao=4) Ent�o
         Escreval("Saindo do sistema")
         Interrompa
      Fimse

      Escreval("Deseja voltar para o menu? 's' para sim e 'n' para n�o")
      Leia(sn)

      Se (sn = "n") Ent�o
         Interrompa
      Fimse

      limpatela()

   At� (opcao=4)

Fimalgoritmo