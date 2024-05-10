Algoritmo "PROVA"
// loja  de  roupas.
//No sistema será possível navegar através de um menu para:
//1)Ver os itens e quantidades disponíveis no estoque;
//2)Realizar vendas dos itens disponíveis no estoque;
//3)Fazer o recebimento de uma venda;
//4)Sair do sistema.


// tomar como base que:
//a)Os itens, preços e quantidades disponíveis serão vetores e seus valores já
// estarão predefinidos no sistema.

//b)Para o registro da venda deverá ser informado o nome do cliente,
//telefone, forma de pagamento. Os itens da venda feita deverão ser armazenados
// em um vetor.

//c)Ao fazer o recebimento de uma venda,apresentar todos os dados da venda
//e se o cliente for pagar em dinheiro, conceder desconto de 10% sobre o valor
//total.

//d)Não deverão ser aceitas quantidades negativas de produtos.

//e)Comentem o código fonte, explicando cada trecho e o porquêda escolha das
//estruturasno algoritmo.


Var
   item : vetor[1..3] de caractere //as categorias de itens escolhidas foram 3 (camiseta, calça e sapato), mas podem ser modificadas de acordo com o estoque da loja (aí será preciso o número seja modificado em todo o programa)
   preco : vetor[1..3] de real      //variável que define o preço de cada produto
   qnt_dsp : vetor[1..3] de inteiro   //define a quantidade disponível de cada item
   item_vendido : vetor[1..3] de caractere    //aqui foi decidido que só podem ser vendidos 3 itens por venda
   qnt_item_vendido : vetor[1..3] de inteiro  //essa variável delimita que o cliente só pode pedir 3 tipos de itens (de acordo com os tipos de itens disponíveis)
   forma_pagamento : vetor[1..4] de caractere  //dinheiro, pix, crédito, débito
   valor_item_vendido :vetor[1..3] de real

   i : inteiro
   n : inteiro    //essa é a variável de controle do número do item na venda
   j : inteiro    //essa é a variável de controle do número do pedido na venda

   opcao : inteiro       //opção do menu
   sn : caractere        //opção sim ou não para continuar o sistema
   ns : caractere

   pagamento : inteiro             //número digitado no input (1, 2, 3 ou 4), que irá definir qual posição do vetor forma_pagamento será apresentado no final da compra
   nome_cliente : caractere
   telefone_cli : caractere        //telefone como caractere e não número inteiro pois não será realizado cálculos com este número
   total : real                    //soma dos produtos escolhidos, ou número digitado pelo funcionário
   total_desconto : real           //total com desconto de 10% em dinheiro


Inicio

   Repita
      Escreval("Digite 1 para ver os itens e quantidades disponíveis no estoque")
      Escreval("Digite 2 para realizar uma venda")
      Escreval("Digite 3 para fazer o recebimento de uma venda")
      Escreval("Digite 4 para sair do sistema")
      Leia(opcao)

      item[1] <- "camiseta"   //VALORES JÁ DEFINIDOS DOS PRODUTOS
      item[2] <- "calça"      //itens da loja
      item[3] <- "sapato"

      preco[1] <- 50
      preco[2] <- 100         //preços dos itens
      preco[3] <- 70

      qnt_dsp[1] <- 6
      qnt_dsp[2] <- 5         //quantidade dos itens
      qnt_dsp[3] <- 10

      forma_pagamento[1] <- "dinheiro"
      forma_pagamento[2] <- "pix"
      forma_pagamento[3] <- "cartão de crédito"     //forma de pagamento, que vai variar de acordo com a opção escolhida
      forma_pagamento[4] <- "cartão de débito"

      Se (opcao=1) Então
         limpatela()
         Escreval("Os itens são: ")
         Para i de 1 até 3 Faça
            Escreval(item[i])                  //Escolhemos utilizar o para pois caso haja muitos itens seria trabalhoso demais colocar item por item no Escreval
         Fimpara

         Escreval("---------------------------------------------")

         Para i de 1 até 3 Faça
            Escreval("A quantidade disponível de ", item[i], "s", " é: ", qnt_dsp[i], ". Valor: R$:", preco[i])
         Fimpara
      Fimse

      Repita
         Se (opcao=2) Então
            limpatela()
            Escreval("Digite o nome do cliente: ")
            Leia(nome_cliente)
            Escreval("Digite o telefone do cliente: ")
            Leia(telefone_cli)

            limpatela()

            Escreval("Os itens disponíveis são: ")
            Para i de 1 até 3 Faça
               Escreval(i, ": ", item[i])
            Fimpara

            Escreval("A quantidade disponível de cada item é: ")
            Para i de 1 até 3 Faça
               Escreval(i, ": ", qnt_dsp[i])
            Fimpara

            Escreval("O preço de cada item é: ")
            Para i de 1 até 3 Faça
               Escreval(i, ": ", preco[i])
            Fimpara

            Repita
               Para j de 1 até 3 Faça
                  Escreval("Digite o número do item escolhido: ")
                  Leia(n)

                  item_vendido[j] <- item[n]

                  Repita
                     Escreval("Digite a quantidade deste item: ")
                     Leia(qnt_item_vendido[j])

                     Se (qnt_item_vendido[j] < 1) ou (qnt_item_vendido[j] > qnt_dsp[n]) Então
                        Escreval("Opção inválida")
                     Fimse

                  Até  (qnt_item_vendido[j] >=1) e (qnt_item_vendido[j] <= qnt_dsp[n])

                  valor_item_vendido[j] <- preco[n]*qnt_item_vendido[j]
                  total <- total + preco[n]*qnt_item_vendido[j]
                  qnt_dsp[n] <- qnt_dsp[n]-qnt_item_vendido[j]

                  Escreval("Escolher outro item? 's' para sim e 'n' para não")
                  Leia(sn)

                  Se(sn<>"s") e (sn<>"n") Então
                     Repita
                        Escreval("Opção inválida")
                        Escreval("Escolher outro item? 's' para sim e 'n' para não")
                        Leia(sn)
                     Ate (sn="s") ou (sn="n")
                  Fimse

                  Se (sn="n") Então
                     limpatela()

                     Escreval("O total da compra é: ", total)

                     Escreval(" ")

                     Escreval("Digite a forma de pagamento: ")
                     Escreval("1 para dinheiro")
                     Escreval("2 para pix")
                     Escreval("3 para cartão de crédito")
                     Escreval("4 para cartão de débito")
                     Leia(pagamento)

                     Se (pagamento=1) Então
                        total_desconto <- total*0.9
                        Escreval("Seu total com desconto é R$", total_desconto)
                     Fimse

                     limpatela()

                     Escreval("DADOS DA VENDA: ")
                     Escreval("Nome do(a) cliente: ", nome_cliente)
                     Escreval("Telefone do(a) cliente: ", telefone_cli)
                     Escreval("Forma de pagamento: ", forma_pagamento[pagamento])
                     Se (pagamento=1) Então
                        Escreval("O total da compra é R$", total_desconto)
                     Senão
                        Escreval("O total da compra é R$", total)
                     Fimse

                     Escreval("")
                     Escreval("Deseja fazer outra compra? 's' para sim e 'n' para não")
                     Leia(ns)

                     Se(ns="s") Então
                        j <- 4
                        sn <- "n"
                     Senão
                        Interrompa
                     Fimse
                  Fimse
               Fimpara
            Até (sn="n")

            Se (sn="n") Então
               Interrompa
            Fimse
         Fimse
      Até(ns="n")

      Se(opcao=3) Então
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
         Escreval("3 para cartão de crédito")
         Escreval("4 para cartão de débito")
         Leia(pagamento)

         Se (pagamento=1) Então
            total_desconto <- total*0.9
         Fimse

         limpatela()

         Escreval("DADOS DA VENDA: ")
         Escreval("Nome do(a) cliente: ", nome_cliente)
         Escreval("Telefone do(a) cliente: ", telefone_cli)
         Escreval("Forma de pagamento: ", forma_pagamento[pagamento])
         Se (pagamento=1) Então
            Escreval("O total da compra com desconto é R$", total_desconto)
         Senão
            Escreval("O total da compra é R$", total)
         Fimse
         Interrompa
      Fimse

      Se (opcao=4) Então
         Escreval("Saindo do sistema")
         Interrompa
      Fimse

      Escreval("Deseja voltar para o menu? 's' para sim e 'n' para não")
      Leia(sn)

      Se (sn = "n") Então
         Interrompa
      Fimse

      limpatela()

   Até (opcao=4)

Fimalgoritmo