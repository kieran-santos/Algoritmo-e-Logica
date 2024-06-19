Algoritmo "PROCEDIMENTO_CALCULADORA"



Var
   pri_numero, seg_numero, res : real
   opcao : inteiro
   sn : caractere
   //uma variável global está disponível no programa inteiro, é declarada no VAR
   //variáveis locais: mas também podemos declarar uma variável dentro de um procedimento, e ela so existe dentro dele
   //desvio de código é quando o programa desvia da execução linear
   //nesse caso quando ele encontra o soma() ele sobre pro procedimento de soma e só sai de lá quando terminar o procedimento


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

      Escreval("O que você quer fazer?")
      Escreval("0 - Sair do programa")
      Escreval("1 - somar")
      Escreval("2 - subtrair")
      Escreval("3 - multiplicar")
      Escreval("4 - dividir")
      Leia(opcao)
      
      Se(opcao=0)Então
         Interrompa
      Fimse

      Escreval("Digite o primeiro número da equação")
      Leia(pri_numero)
      Escreval("Digite o segundo número")
      Leia(seg_numero)

      Se(opcao=1)Então
         somar()
      Fimse

      Se(opcao=2)Então
         subtrair()
      Fimse

      Se(opcao=3)Então
         multiplicar()
      Fimse

      Se(opcao=4)Então
         dividir()
      Fimse


      Escreval("O resultado é: ", res)

      Escreval("Deseja fazer outro cálculo?")
      Leia (sn)

      Se(sn="n")Então
         Interrompa
      Fimse
      
      limpatela()

   Ate(opcao=0)
Fimalgoritmo