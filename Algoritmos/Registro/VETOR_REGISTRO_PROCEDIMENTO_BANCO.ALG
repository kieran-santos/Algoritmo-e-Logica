Algoritmo "VETOR_REGISTRO_PROCEDIMENTO_BANCO"

//caixa eletr�nico
//realizar dep�sito
//saca valores
//ver extrato
//acesso atrav�s de login com dados estabelecidos - declarar dados
//3 tentativas de login
//valida��es de saque: saldo suficiente
//valida��o de dep�sito: n�o aceitar menos que zero



Tipo Transacao = Registro
   data : caracter
   valor : real
Fimregistro




Var
   movimentacao : vetor[1..10] de Transacao
   opcao, deposito, posi_saque : inteiro
   saque : vetor[1..10] de Transacao
   valor_na_conta : real
   j : inteiro

Procedimento Login()
Var
   usuario, senha: caracter
   i : inteiro

Inicio
   Escreval("LOGIN")
   Para i de 1 at� 3 Fa�a
      Escreval("Tentativa ", i, "de 3")
      Escreval("Informe seu usu�rio: ")
      Leia(usuario)
      Escreval("Informe sua senha: ")
      Leia(senha)
      Se(usuario <> "aluno") ou (senha <> "123") Ent�o
         Escreval("Usu�rio/senha incorreto")
      Sen�o
         Interrompa
      Fimse
   Fimpara
Fimprocedimento


Funcao Saldo() : real
//vai somar todas as posi��es de movimentacao[].valor para dar o valor_na_conta
var
   i : inteiro
   valor : real
Inicio
   Para i de 1 at� 9 Fa�a
      valor <- valor + movimentacao[i].valor
   Fimpara
   Retorne valor
Fimfuncao


Inicio
   Escreval("Bem vindo ao Caixa Eletr�nico")
   Escreval("Para acessar sua conta fa�a o login")
   Login()

   Limpatela()

   Repita
      Escreval("MENU")
      Escreval("0 - Sair do programa")
      Escreval("1 - Realizar dep�sito")
      Escreval("2 - Sacar valor")
      Escreval("3 - Ver extrato")
      Leia(opcao)


      Escolha(opcao)
      Caso 0
         Interrompa

      Caso 1
         deposito <- deposito + 1
         Repita
            Escreval("Digite o valor: ")
            Leia(movimentacao[deposito].valor)
            Escreval("Digite a data de hoje: ")
            Leia(movimentacao[deposito].data)
            Se(movimentacao[deposito].valor <= 0) Ent�o
               Escreval("Valor inv�lido")
               Escreval("Tente novamente")
            Fimse
         Ate(movimentacao[deposito].valor > 0)

      Caso 2
         posi_saque <- posi_saque + 1
         Repita
         valor_na_conta <- Saldo()
            Escreval("O valor dipon�vel na conta �: ", valor_na_conta)
            Escreval("Digite o valor que deseja sacar: ")
            Leia(saque[posi_saque].valor)
            Se(saque[posi_saque].valor > valor_na_conta) Ent�o
               Escreval("Saldo indispon�vel")
            Sen�o
               Escreval("Digite a data de hoje: ")
               Leia(saque[posi_saque].data)

               valor_na_conta <- valor_na_conta - saque[posi_saque].valor
               Escreval("-------------------")
               Escreval("O valor dispon�vel na conta �: ", valor_na_conta)
            Fimse
         At� (saque[posi_saque].valor <= valor_na_conta)

      Caso 3
         Limpatela()
         Para j de 1 at� 10 Fa�a
            Escreval("   DATA    |     VALOR ADICIONADO    ")
            Escreval(movimentacao[j].data, "   ", movimentacao[j].valor)
            Se(movimentacao[j].data="")Ent�o
               Interrompa
            Fimse
            Escreval("   DATA    |     VALOR SACADO    ")
            Escreval(saque[j].data, "   ", saque[j].valor)
            Se(saque[j].data="")Ent�o
               Interrompa
            Fimse
         Fimpara
         Escreval("O seu saldo total �: ", Saldo())
      Fimescolha
   Ate(opcao=0)
Fimalgoritmo