Algoritmo "PARA_REPITA_ENQUANTO_MEDIAS_SALA"
// Em uma turma h� 10 alunos. Cada aluno
// tem 2 notas que variam de 0 at� 10.
// Um professor precisa calcular a m�dia
// das duas notas de cada aluno e apresente a
// o usu�rio. Crie um programa que resolve
// este problema.
Var

i : inteiro
nota1, nota2, media : real
Inicio

Para i de 1 ate 10 Fa�a
  Escreval("Vamos digitar as notas do aluno ", i)

  Repita
     Escreva("Digite a primeira nota: ")
     Leia(nota1)
  Ate (nota1 >= 0) e (nota1 <= 10)

  Escreva("Digite a segunda nota: ")
  Leia(nota2)
  Enquanto (nota2 < 0) ou (nota2 > 10) Fa�a
     Escreva("Digite a segunda nota: ")
     Leia(nota2)
  Fimenquanto

  Media<-(nota1+nota2)/2
  Escreval("A m�dia do aluno � ", media)
  Escreval("___________________________")
Fimpara


Fimalgoritmo