Algoritmo "semnome"

Var
   Sal_Me,Idade,Cred,Seguro,Total:real



Inicio
   Escreval ("Qual seu saldo médio no último ano?")
   Leia (Sal_Me)
   Escreval ("Qual a sua idade?")
   Leia (Idade)


   Se (Sal_Me>=0) E (Sal_Me<=200)Então
      Cred<-0
   Senão
     Se(Sal_Me>=201) E (Sal_Me<=400)Então
       Cred<-(Sal_Me*0.2)
     Senão
       Se(Sal_Me>=401) E (Sal_Me<=600)Então
         Cred<-(Sal_Me*0.3)
       Senão
         Se(Sal_Me>=601)Então
           Cred<-(Sal_Me*0.4)
         Fimse
       Fimse
     Fimse
   Fimse

   
   Se (Idade>=18) e (Idade<=24) Então
        Seguro<-(Cred*0.02)
   Fimse

   Se (Idade>=25) e (Idade<=35) Então
       Seguro<-(Cred*0.06)
   Fimse

   Se (Idade>=36) e (Idade<=45) Então
        Seguro<-(Cred*0.08)
   Fimse

   Se (Idade>=46) e (Idade<=55) Então
        Seguro<-(Cred*0.10)
   Fimse

   Se (Idade>55) Então
        Seguro<-(Cred*0.15)
   Fimse
   
   Total<-Cred+Seguro
   Escreval ("O valor do seu saldo é: ",Sal_Me)
   Escreval ("O valor do seu credito é: ",Cred)
   Escreval ("O valor do seu seguro é: ",Seguro)
   Escreval ("O valor total a ser pago é: ",Total)



Fimalgoritmo