Algoritmo "Jogo da Velha"



Var
   jogo : vetor[1..3, 1..3] de caracter
   linha1, coluna1: inteiro
   linha2, coluna2: inteiro
   sn : caractere
   i : inteiro
   j : inteiro
   vencedor : caractere
   contador : real
   verif : inteiro

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

   Escreval("Jogador 1: Qual posi��o voc� quer?")
   Escreval("Informe a linha: ")
   Leia(linha1)
   Escreval("Informa a coluna: ")
   Leia(coluna1)

   jogo [linha1,coluna1] <- "X"

   Escreval("      |      |      ")
   Escreval("  ",jogo[1,1],"    |  ",jogo[1,2],"    |  ",jogo[1,3],"    ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("  ",jogo[2,1],"    |  ",jogo[2,2],"    |  ",jogo[2,3],"    ")
   Escreval("--------------------")
   Escreval("      |      |      ")
   Escreval("  ",jogo[3,1],"    |  ",jogo[3,2],"    |  ",jogo[3,3],"    ")

   contador <- contador + 1

   Escreval("Proxima rodada? s para 'sim' e n para 'n�o'")
   Leia(sn)
   Se(sn="n") Ent�o
      Escreval("O vencedor �: ", vencedor)
      Interrompa
   Fimse

   Repita
      Escreval("Jogador 2: Qual posi��o voc� quer?")
      Escreval("Informe a linha: ")
      Leia(linha2)
      Escreval("Informa a coluna: ")
      Leia(coluna2)
      Se(jogo[linha1,coluna1]=jogo[linha2,coluna2])Ent�o
         Escreval(" ")
         Escreval("Posi��o j� preenchida")
         Escreval("Digite outra posi��o")
         Escreval(" ")
      Fimse
   Ate(jogo[linha2,coluna2]<>jogo[linha1,coluna1])

   jogo [linha2,coluna2] <- "O"

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

   Escreval("Proxima rodada? s para 'sim' e n para 'n�o'")
   Leia(sn)
   Se(sn="n") Ent�o
      Escreval("O vencedor �: ", vencedor)
      Interrompa
   Fimse

   Repita
      Repita
         Escreval("Jogador 1: Qual posi��o voc� quer?")
         Escreval("Informe a linha: ")
         Leia(linha1)
         Escreval("Informa a coluna: ")
         Leia(coluna1)

         Se(jogo[linha1,coluna1]=jogo[linha2,coluna2])Ent�o
            Escreval("Posi��o j� preenchida")
            Escreval("Digite outra posi��o")
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

      Escreval("Proximo jogador? s para 'sim' e n para 'n�o'")
      Leia(sn)
      Se(sn="n") Ent�o
         Escreval("O vencedor �: ", vencedor)
         Interrompa
      Fimse

      contador <- contador + 1

      Se(contador=9)Ent�o
         Interrompa
      Fimse

      Repita
         Escreval("Jogador 2: Qual posi��o voc� quer?")
         Escreval("Informe a linha: ")
         Leia(linha2)
         Escreval("Informa a coluna: ")
         Leia(coluna2)
         Se(jogo[linha2,coluna2]=jogo[linha1,coluna1])Ent�o
            Escreval("Posi��o j� preenchida")
            Escreval("Digite outra posi��o")
         Fimse
      Ate(jogo[linha2,coluna2]<>jogo[linha1,coluna1])

      jogo [linha2,coluna2] <- "O"

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

      Escreval("Proxima rodada? s para 'sim' e n para 'n�o'")
      Leia(sn)
      Se(sn="n") Ent�o
         Escreval("O vencedor �: ", vencedor)
         Interrompa
      Fimse

   Ate(contador=10)

   Escreval("Deu velha")

Fimalgoritmo
