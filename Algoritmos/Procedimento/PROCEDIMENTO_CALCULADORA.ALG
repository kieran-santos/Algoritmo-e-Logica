Algoritmo "PROCEDIMENTO_CALCULADORA"



Var
   pri_numero, seg_numero, res : real
   opcao : inteiro
   sn : caractere
   //uma vari�vel global est� dispon�vel no programa inteiro, � declarada no VAR
   //vari�veis locais: mas tamb�m podemos declarar uma vari�vel dentro de um procedimento, e ela so existe dentro dele
   //desvio de c�digo � quando o programa desvia da execu��o linear
   //nesse caso quando ele encontra o soma() ele sobre pro procedimento de soma e s� sai de l� quando terminar o procedimento


Procedimento somar()
Inicio
   res <- pri_numero + seg_numero
Fimprocedimento



Procedimento subtrair()
Inicio
   res <- pri_numero - seg_numero
Fimprocedimento



Procedimento multiplicar()
Inicio
   res <- pri_numero * seg_numero
Fimprocedimento



Procedimento dividir()
Inicio
   res <- pri_numero / seg_numero
Fimprocedimento


Inicio

   Escreval("Bem vindo a calculadora")
   Repita

      Escreval("O que voc� quer fazer?")
      Escreval("0 - Sair do programa")
      Escreval("1 - somar")
      Escreval("2 - subtrair")
      Escreval("3 - multiplicar")
      Escreval("4 - dividir")
      Leia(opcao)
      
      Se(opcao=0)Ent�o
         Interrompa
      Fimse

      Escreval("Digite o primeiro n�mero da equa��o")
      Leia(pri_numero)
      Escreval("Digite o segundo n�mero")
      Leia(seg_numero)

      Se(opcao=1)Ent�o
         somar()
      Fimse

      Se(opcao=2)Ent�o
         subtrair()
      Fimse

      Se(opcao=3)Ent�o
         multiplicar()
      Fimse

      Se(opcao=4)Ent�o
         dividir()
      Fimse


      Escreval("O resultado �: ", res)

      Escreval("Deseja fazer outro c�lculo?")
      Leia (sn)

      Se(sn="n")Ent�o
         Interrompa
      Fimse
      
      limpatela()

   Ate(opcao=0)
Fimalgoritmo