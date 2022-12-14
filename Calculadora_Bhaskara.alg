algoritmo "Calculadora_Bhaskara"
// Função : Calcular equações do segundo grau
// Autor : Andrey Cavalieri Silveira _/|
// Data : 04/07/2022
// Seção de Declarações 
var
   resposta:Caractere
   a,b,c:Inteiro
   x1,x2,x,delta:Real
inicio
      resposta <- "s"
      Repita
            a <- 0
            b <- 0
            c <- 0
            delta <- 0
            x <- 0
            x1 <- 0
            x2 <- 0
            Repita
            EscrevaL("------------------------------------------------------------")
            EscrevaL("                  Calculadora de Bhaskara")
            EscrevaL("------------------------------------------------------------")
            EscrevaL("   A equação do 2° grau é representada da seguinte forma:")
            EscrevaL("                  ax² + bx - c = 0")
            EscrevaL()
            Escreva("Insira o valor de 'a': ")
            Leia(a)
            Se(a = 0)entao
               EscrevaL("Impossível realizar o cálculo com a = 0.")
               EscrevaL("Inserir novo valor? [S/N] ")
               Leia(resposta)
               Se(resposta = "n")entao
                  LimpaTela
                  Escreva("          Encerrando...      _/|")
                  EscrevaL()
                  Senao
                  Se(resposta = "s")entao
                  LimpaTela
                  FimSe
               FimSe
            FimSe
      Ate((resposta = "n") ou (a > 0) ou (a < 0))
      Escreva("Insira o valor de 'b': ")
      Leia(b)
      Escreva("Insira o valor de 'c': ")
      Leia(c)
      EscrevaL()
      delta <- Exp(b,2) - (4 * a * c)
      Se(delta < 0)entao
         EscrevaL("Delta =",delta)
         EscrevaL("Delta menor que 0! Não há raízes reais para essa equação.")
         Escreva("Inserir nova equação? [S/N] ")
         Leia(resposta)
         Se(resposta = "n")entao
            LimpaTela
            Escreva("         Encerrando...       _/|")
            EscrevaL()
         FimSe
      FimSe
      Se(delta = 0)entao
         EscrevaL("Delta =",delta)
         EscrevaL("Delta igual a zero!! Há apenas uma raiz real para essa equação.")
         x <- ((-b)+ RaizQ(delta))/(2*a)
         EscrevaL("X =",x:5:3)
         EscrevaL()
         Escreva("Inserir nova equação? [S/N] ")
         Leia(resposta)
         Se(resposta = "n")entao
            LimpaTela
            Escreva("         Encerrando...      _/|")
            EscrevaL()
         FimSe
      FimSe
      Se(delta > 0)entao
         EscrevaL("Delta =",delta)
         EscrevaL("Delta maior que zero!!! Há duas raizes reais para essa equação")
         x1 <- ((-b)+ RaizQ(delta))/(2*a)
         x2 <- ((-b)- RaizQ(delta))/(2*a)
         EscrevaL("X'=",x1:5:3)
         EscrevaL("X''=",x2:5:3)
         EscrevaL()
         Escreva("Inserir nova equação? [S/N] ")
         Leia(resposta)
         Se(resposta = "n")entao
            LimpaTela
            Escreva("         Encerrando...       _/|")
            EscrevaL()
         FimSe
      FimSe
      Se(resposta = "s")entao
         LimpaTela
      FimSe
      Ate(resposta = "n")
// Seção de Comandos K
fimalgoritmo
