Algoritmo "desconto_compra"
Var
   preco, pagamento, pagcartao, pagpix, pagdin: real
   produto: caractere

Inicio
   Escreva("Digite o produto: ")
   Leia (produto)
   Escreva("Digite o preço: ")
   Leia (preco)
   Escreva("Digite a forma de pagamento (1 para cartão, 2 para pix e 3 para dinheiro): ")
   Leia (pagamento)

   Escreval("")

   pagpix <- (preco*0.94)
   pagdin <- (preco*0.9)

   Se(pagamento = 1) Então
      Escreval("O preço é: ",  preco)
   Fimse

   Se(pagamento = 2) Então
      Escreval("O preço com desconto é: ", pagpix)
   Fimse

   Se(pagamento = 3) Então
      Escreval("O preço com desconto é ", pagdin)
   Fimse

Fimalgoritmo