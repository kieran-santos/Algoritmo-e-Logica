Algoritmo "Loja_roupas"

Var
   qtd_disponiveis : Vetor[1..5] de inteiro
   preco_item : Vetor[1..5] de real
   nome_item : Vetor[1..5] de caracter
   nome_cliente : caracter
   telefone, forma_pgto, opcao, opcao_item, i, qtd, opcao_compra : inteiro
   vlr_compra, vlr_final, desconto : real

Inicio

   qtd_disponiveis[1] <- 5
   qtd_disponiveis[2] <- 5
   qtd_disponiveis[3] <- 5
   qtd_disponiveis[4] <- 5
   qtd_disponiveis[5] <- 5
   nome_item[1] <- "Camisa"
   nome_item[2] <- "Cal�a"
   nome_item[3] <- "Meia"
   nome_item[4] <- "Bermuda"
   nome_item[5] <- "Cueca"
   preco_item[1] <- 28.90
   preco_item[2] <- 89.90
   preco_item[3] <- 9.99
   preco_item[4] <- 39.90
   preco_item[5] <-  15.99

   Repita
      Escreval("Seja bem-vindo � nossa loja!")
      Escreval("Para continuar o atendimento selecione uma op��o: ")
      Escreval("1 - Ver nosso estoque e valores")
      Escreval("2 - Realizar uma venda")
      Escreval("3 - Finalizar a venda")
      Escreval("0 - Sair")
      Leia(opcao)
      Se opcao = 1 ent�o
         Para i de 1 at� 5 fa�a
            Escreval("Item: ", nome_item[i], " Quantidade:", qtd_disponiveis[i], " Valor: R$", preco_item[i]:2:2)
         fimpara
         Escreval("")
      fimse

      Se opcao = 2 ent�o
         Escreval("Nome do cliente: ")
         Leia(nome_cliente)
         Escreval("Telefone: ")
         Leia(telefone)
         Repita
            Escreval("Informe o item comprado: ")
            Leia(opcao_item)
            se qtd_disponiveis[opcao_item] < 0  entao
               escreval("Desculpe, esse item n�o est� mais dispon�vel.")
               interrompa
            fimse
            Escreval("Informe a quantidade: ")
            Leia(qtd)
            Se qtd > qtd_disponiveis[opcao_item] entao
               limpatela
               Escreval("Ops, n�o temos essa quantidade dispon�vel no estoque.")
               Escreval("")
               interrompa
            fimse


            vlr_compra <- vlr_compra + 28.9
            vlr_compra <- vlr_compra * qtd

            Para i de 1 at� qtd fa�a
               qtd_disponiveis[opcao_item] <- qtd_disponiveis[opcao_item] - 1
            fimpara

            Se qtd_disponiveis[opcao_item] < 1 entao
               escreval("Desculpe, esse item n�o est� mais dispon�vel.")
               interrompa
            fimse
            Escreval("Valor atual do pedido: ", vlr_compra)
            Escreval("Deseja comprar mais itens?")
            Escreval("1 - Sim")
            Escreval("2 - N�o")
            Leia(opcao_compra)

         ate (opcao_compra = 2)




      fimse
      Escreval("O valor total � de: R$", vlr_compra)


      Se opcao = 3 ent�o
         Escreval("Qual ser� a forma de pagamento?")
         Escreval("1 - Pix")
         Escreval("2 - Cart�o (D�bito ou Cr�dito)")
         Escreval("3 - Dinheiro")
         Leia(forma_pgto)
         Se forma_pgto = 3 ent�o
            desconto <- vlr_compra*0.1
            vlr_final <- vlr_compra - desconto
            Escreval("O valor do descontro foi de: R$", desconto)
            Escreval("O valor total � de: R$", vlr_final)
         fimse
      fimse


   Ate opcao = 0


   Escreval("Agradecemos � prefer�ncia! Volte sempre.")

Fimalgoritmo