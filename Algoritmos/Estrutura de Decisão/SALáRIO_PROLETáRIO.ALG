Algoritmo "salário_proletário"

Var
   bruto, liquido, INSS, IR: real

Inicio

      Escreva("Digite o salário bruto: ")
      Leia(bruto)
      
      
      Se(bruto<=1412)Então
          INSS <- (bruto*0.075)
      Senão
        Se(bruto>=1412.01) E (bruto<=2666.68)Então
            INSS <- (bruto*0.09) - 21.18
        Senão
          Se(bruto>=2666.69) E (bruto<=4000.03)Então
            INSS <- (bruto*0.12) - 101.18
          Senão
            Se(bruto>=4000.04) E (bruto<=7786.02)Então
            INSS <- (bruto*0.14) - 181.18
            Fimse
          Fimse
        Fimse
      Fimse
      
      
      Se(bruto<=2259.20)Então
          IR <- (bruto*0)
      Senão
        Se(bruto>=2259.21) E (bruto<=2826.65)Então
          IR <- (bruto*0.075) - 169.44
        Senão
          Se(bruto>=2826.66) E (bruto<=3751.05)Então
            IR <- (bruto*0.15) - 381.44
          Senão
            Se(bruto>=3751.06) E (bruto<=4664.68)Então
              IR <- (bruto*0.225) - 662.77
            Senão
              Se(bruto>4664.68)Então
                IR <- (bruto*0.275) - 896
              Fimse
            Fimse
          Fimse
        Fimse
      Fimse

      liquido <- (bruto-INSS-IR)

      Escreval("O salário líquido é: ", liquido)

Fimalgoritmo