Algoritmo "PARA_REPITA_ENQUANTO_MEDIAS_SALA"
// Em uma turma há 10 alunos. Cada aluno
// tem 2 notas que variam de 0 até 10.
// Um professor precisa calcular a média
// das duas notas de cada aluno e apresente a
// o usuário. Crie um programa que resolve
// este problema.
Var

i : inteiro
nota1, nota2, media : real
Inicio

Para i de 1 ate 10 Faça
  Escreval("Vamos digitar as notas do aluno ", i)

  Repita
     Escreva("Digite a primeira nota: ")
     Leia(nota1)
  Ate (nota1 >= 0) e (nota1 <= 10)

  Escreva("Digite a segunda nota: ")
  Leia(nota2)
  Enquanto (nota2 < 0) ou (nota2 > 10) Faça
     Escreva("Digite a segunda nota: ")
     Leia(nota2)
  Fimenquanto

  Media<-(nota1+nota2)/2
  Escreval("A média do aluno é ", media)
  Escreval("___________________________")
Fimpara


Fimalgoritmo