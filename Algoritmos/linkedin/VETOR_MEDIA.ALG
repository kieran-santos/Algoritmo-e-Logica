Algoritmo "MEDIA_VETOR"
//Faça um algoritmo que armazene as notas de 10 alunos e apresente a média
//de cada aluno e a média da sala. Seu programa deverá armazenar: nome do
//aluno, a nota de 2 provas e a media final


Var

   nome : vetor[1..10] de caractere
   i : inteiro
   nota1 : vetor[1..10] de real
   nota2 : vetor[1..10] de real
   media : vetor[1..10] de real
   soma_media: real
   media_sala: real


Inicio

   Para i de 1 até 10 Faça
      Escreval("Digite o nome do aluno ", i)
      Leia(nome[i])
      Escreval("Digite a nota 1 de ", nome[i])
      Leia(nota1[i])
      Escreval("Digite a nota 2 de ", nome[i])
      Leia(nota2[i])

      media[i] <- (nota1[i]+nota2[i])/2
      soma_media <- soma_media + media[i]


      Escreval("A média de ", nome[i], " é: ", media[i])
   Fimpara

   media_sala <- (soma_media)/10

   Escreval("A média da sala é :", media_sala)


Fimalgoritmo