Algoritmo "desconto_compra"
Var
   preco, pagamento, pagcartao, pagpix, pagdin: real
   produto: caractere

Inicio
   Escreva("Digite o produto: ")
   Leia (produto)
   Escreva("Digite o pre�o: ")
   Leia (preco)
   Escreva("Digite a forma de pagamento (1 para cart�o, 2 para pix e 3 para dinheiro): ")
   Leia (pagamento)

   Escreval("")

   pagpix <- (preco*0.94)
   pagdin <- (preco*0.9)

   Se(pagamento = 1) Ent�o
      Escreval("O pre�o �: ",  preco)
   Fimse

   Se(pagamento = 2) Ent�o
      Escreval("O pre�o com desconto �: ", pagpix)
   Fimse

   Se(pagamento = 3) Ent�o
      Escreval("O pre�o com desconto � ", pagdin)
   Fimse

Fimalgoritmo