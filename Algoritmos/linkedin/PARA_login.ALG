Algoritmo "LOGIN"
//Faça um sistema de login, onde após 3 tentativas frustadas aparecerá a
//mensagem de conta bloqueada.
//Você deverá definir um usuário e senha corretos e pedir para o usuário
//digitar o usuário e a senha
Var
i: inteiro
usuario_c:caracter
senha_c:caracter

usuario:caracter
senha:caracter

Inicio

usuario_c<-"nome"
senha_c<-"senha"

Para i de 1 até 3 Faça
     limpatela()
     Escreval ("Você tem ", i ," de 3 tentativas")
     Escreval ("Informe o usuário: ")
     Leia (usuario)
     Escreval ("Informe a senha: ")
     Leia (senha)
     Se (usuario=usuario_c) e (senha=senha_c) Então
        Escreval ("Voce está logado")
        Interrompa  //Interrompa é o comando que interrompe o PARA
     Fimse
Fimpara

Se (usuario<>usuario_c) e (senha<>senha_c) Então
   Escreval ("Sua conta foi bloqueada")
Fimse


Fimalgoritmo