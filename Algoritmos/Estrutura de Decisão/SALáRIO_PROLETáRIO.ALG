Algoritmo "sal�rio_prolet�rio"

Var
   bruto, liquido, INSS, IR: real

Inicio

      Escreva("Digite o sal�rio bruto: ")
      Leia(bruto)
      
      
      Se(bruto<=1412)Ent�o
          INSS <- (bruto*0.075)
      Sen�o
        Se(bruto>=1412.01) E (bruto<=2666.68)Ent�o
            INSS <- (bruto*0.09) - 21.18
        Sen�o
          Se(bruto>=2666.69) E (bruto<=4000.03)Ent�o
            INSS <- (bruto*0.12) - 101.18
          Sen�o
            Se(bruto>=4000.04) E (bruto<=7786.02)Ent�o
            INSS <- (bruto*0.14) - 181.18
            Fimse
          Fimse
        Fimse
      Fimse
      
      
      Se(bruto<=2259.20)Ent�o
          IR <- (bruto*0)
      Sen�o
        Se(bruto>=2259.21) E (bruto<=2826.65)Ent�o
          IR <- (bruto*0.075) - 169.44
        Sen�o
          Se(bruto>=2826.66) E (bruto<=3751.05)Ent�o
            IR <- (bruto*0.15) - 381.44
          Sen�o
            Se(bruto>=3751.06) E (bruto<=4664.68)Ent�o
              IR <- (bruto*0.225) - 662.77
            Sen�o
              Se(bruto>4664.68)Ent�o
                IR <- (bruto*0.275) - 896
              Fimse
            Fimse
          Fimse
        Fimse
      Fimse

      liquido <- (bruto-INSS-IR)

      Escreval("O sal�rio l�quido �: ", liquido)

Fimalgoritmo