algoritmo "Calculadora_Bhaskara"
// Fun??o : Calcular equa??es do segundo grau
// Autor : Andrey Cavalieri Silveira _/|
// Data : 04/07/2022
// Se??o de Declara??es 
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
            EscrevaL("   A equa??o do 2? grau ? representada da seguinte forma:")
            EscrevaL("                  ax? + bx - c = 0")
            EscrevaL()
            Escreva("Insira o valor de 'a': ")
            Leia(a)
            Se(a = 0)entao
               EscrevaL("Imposs?vel realizar o c?lculo com a = 0.")
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
         EscrevaL("Delta menor que 0! N?o h? ra?zes reais para essa equa??o.")
         Escreva("Inserir nova equa??o? [S/N] ")
         Leia(resposta)
         Se(resposta = "n")entao
            LimpaTela
            Escreva("         Encerrando...       _/|")
            EscrevaL()
         FimSe
      FimSe
      Se(delta = 0)entao
         EscrevaL("Delta =",delta)
         EscrevaL("Delta igual a zero!! H? apenas uma raiz real para essa equa??o.")
         x <- ((-b)+ RaizQ(delta))/(2*a)
         EscrevaL("X =",x:5:3)
         EscrevaL()
         Escreva("Inserir nova equa??o? [S/N] ")
         Leia(resposta)
         Se(resposta = "n")entao
            LimpaTela
            Escreva("         Encerrando...      _/|")
            EscrevaL()
         FimSe
      FimSe
      Se(delta > 0)entao
         EscrevaL("Delta =",delta)
         EscrevaL("Delta maior que zero!!! H? duas raizes reais para essa equa??o")
         x1 <- ((-b)+ RaizQ(delta))/(2*a)
         x2 <- ((-b)- RaizQ(delta))/(2*a)
         EscrevaL("X'=",x1:5:3)
         EscrevaL("X''=",x2:5:3)
         EscrevaL()
         Escreva("Inserir nova equa??o? [S/N] ")
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
// Se??o de Comandos K
fimalgoritmo
