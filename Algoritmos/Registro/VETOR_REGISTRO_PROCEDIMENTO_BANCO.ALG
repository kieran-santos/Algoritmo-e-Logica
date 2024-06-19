Algoritmo "VETOR_REGISTRO_PROCEDIMENTO_BANCO"

//caixa eletrônico
//realizar depósito
//saca valores
//ver extrato
//acesso através de login com dados estabelecidos - declarar dados
//3 tentativas de login
//validações de saque: saldo suficiente
//validação de depósito: não aceitar menos que zero



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
   Para i de 1 até 3 Faça
      Escreval("Tentativa ", i, "de 3")
      Escreval("Informe seu usuário: ")
      Leia(usuario)
      Escreval("Informe sua senha: ")
      Leia(senha)
      Se(usuario <> "aluno") ou (senha <> "123") Então
         Escreval("Usuário/senha incorreto")
      Senão
         Interrompa
      Fimse
   Fimpara
Fimprocedimento


Funcao Saldo() : real
//vai somar todas as posições de movimentacao[].valor para dar o valor_na_conta
var
   i : inteiro
   valor : real
Inicio
   Para i de 1 até 9 Faça
      valor <- valor + movimentacao[i].valor
   Fimpara
   Retorne valor
Fimfuncao


Inicio
   Escreval("Bem vindo ao Caixa Eletrônico")
   Escreval("Para acessar sua conta faça o login")
   Login()

   Limpatela()

   Repita
      Escreval("MENU")
      Escreval("0 - Sair do programa")
      Escreval("1 - Realizar depósito")
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
            Se(movimentacao[deposito].valor <= 0) Então
               Escreval("Valor inválido")
               Escreval("Tente novamente")
            Fimse
         Ate(movimentacao[deposito].valor > 0)

      Caso 2
         posi_saque <- posi_saque + 1
         Repita
         valor_na_conta <- Saldo()
            Escreval("O valor diponível na conta é: ", valor_na_conta)
            Escreval("Digite o valor que deseja sacar: ")
            Leia(saque[posi_saque].valor)
            Se(saque[posi_saque].valor > valor_na_conta) Então
               Escreval("Saldo indisponível")
            Senão
               Escreval("Digite a data de hoje: ")
               Leia(saque[posi_saque].data)

               valor_na_conta <- valor_na_conta - saque[posi_saque].valor
               Escreval("-------------------")
               Escreval("O valor disponível na conta é: ", valor_na_conta)
            Fimse
         Até (saque[posi_saque].valor <= valor_na_conta)

      Caso 3
         Limpatela()
         Para j de 1 até 10 Faça
            Escreval("   DATA    |     VALOR ADICIONADO    ")
            Escreval(movimentacao[j].data, "   ", movimentacao[j].valor)
            Se(movimentacao[j].data="")Então
               Interrompa
            Fimse
            Escreval("   DATA    |     VALOR SACADO    ")
            Escreval(saque[j].data, "   ", saque[j].valor)
            Se(saque[j].data="")Então
               Interrompa
            Fimse
         Fimpara
         Escreval("O seu saldo total é: ", Saldo())
      Fimescolha
   Ate(opcao=0)
Fimalgoritmo