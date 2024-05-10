Algoritmo "Jogo da Velha"



Var
   jogo : vetor[1..3, 1..3] de caracter
   linha1, coluna1: inteiro
   linha2, coluna2: inteiro
   sn : caractere
   i : inteiro
   vencedor : caractere
   contador : real

Inicio

   Escreval(" JOGO DA VELHA ")
   Escreval("      |      |      ")
   Escreval("      |      |      ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("      |      |      ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("      |      |      ")

   Repita
      Repita
         Escreval("Jogador 1: Qual posição você quer?")
         Escreval("Informe a linha: ")
         Leia(linha1)
         Escreval("Informa a coluna: ")
         Leia(coluna1)

         jogo[linha2,coluna2] <- jogo[linha2,coluna2]+0

         Se(jogo[linha1,coluna1]=jogo[linha2,coluna2])Então
            Escreval("Posição já preenchida")
            Escreval("Digite outra posição")
         Fimse
      Ate(jogo[linha1,coluna1]<>jogo[linha2,coluna2])

      jogo [linha1,coluna1] <- "X"

      Escreval("      |      |      ")
      Escreval("  ",jogo[1,1],"    |  ",jogo[1,2],"    |  ",jogo[1,3],"    ")
      Escreval("--------------------")
      Escreval("      |      |      ")
      Escreval("  ",jogo[2,1],"    |  ",jogo[2,2],"    |  ",jogo[2,3],"    ")
      Escreval("--------------------")
      Escreval("      |      |      ")
      Escreval("  ",jogo[3,1],"    |  ",jogo[3,2],"    |  ",jogo[3,3],"    ")

      vencedor <- "Jogador 1"

      Escreval("Proximo jogador? s para 'sim' e n para 'não'")
      Leia(sn)
      Se(sn="n") Então
         Escreval("O vencedor é: ", vencedor)
         Interrompa
      Fimse

      contador <- contador + 1

      Se(contador=9)Então
         Interrompa
      Fimse

      Repita
         Escreval("Jogador 2: Qual posição você quer?")
         Escreval("Informe a linha: ")
         Leia(linha2)
         Escreval("Informa a coluna: ")
         Leia(coluna2)
         Se(jogo[linha2,coluna2]=jogo[linha1,coluna1])Então
            Escreval("Posição já preenchida")
            Escreval("Digite outra posição")
         Fimse
      Ate(jogo[linha2,coluna2]<>jogo[linha1,coluna1])

      jogo [linha2,coluna2] <- "O"

   Fimse

   Escreval("      |      |      ")
   Escreval("  ",jogo[1,1],"    |  ",jogo[1,2],"    |  ",jogo[1,3],"    ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("  ",jogo[2,1],"    |  ",jogo[2,2],"    |  ",jogo[2,3],"    ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("  ",jogo[3,1],"    |  ",jogo[3,2],"    |  ",jogo[3,3],"    ")

   vencedor <- "Jogador 2"
   contador <- contador + 1

   Escreval("Proxima rodada? s para 'sim' e n para 'não'")
   Leia(sn)
   Se(sn="n") Então
      Escreval("O vencedor é: ", vencedor)
      Interrompa
   Fimse

Ate(contador=10)

Escreval("Deu velha")

Fimalgoritmo
