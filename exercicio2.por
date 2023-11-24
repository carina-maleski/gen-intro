/*
Elabore um algoritmo que leia 10 n�meros inteiros e armazene em um vetor. 
Em seguida, mostre na tela:
Todos os elementos nos �ndices �mpares do vetor 
Todos os elementos do vetor que s�o n�meros pares
A Soma de todos os elementos do vetor
A M�dia de todos os elementos do vetor, armazenada em uma vari�vel do tipo real
*/

programa {
  inclua biblioteca Util --> util
  inclua biblioteca Matematica --> mat 

  funcao inicio() 
  {
    inteiro numero
    inteiro vetor[] = {2, 5, 1, 3, 4, 9, 7, 8, 10, 6}
    real auxiliar = 0
    real media

    escreva ("Digite 10 numeros inteiros para seu vetor: ")

    para (inteiro posicao = 0; posicao < 10; posicao++)
    {
      leia(numero)
      escreva ("Proximo numero:")
      vetor[posicao] = numero
    }
    
    escreva("Elementos nos �ndices �mpares: ")
    para (posicao = 0; posicao <=9; posicao++)
    {
      se (posicao %2 != 0)
      {
        escreva(vetor[posicao], ", ")
      }
    }

    escreva("Elementos nos �ndices pares: ")
    para (posicao = 0; posicao <=9; posicao++)
    {
      se (posicao %2 == 0)
      {
        escreva(vetor[posicao], ", ")
      }
    }
    para (posicao = 0; posicao <=9; posicao++)
    {
      auxiliar += vetor[posicao]
    }
    escreva("\nSomatoria: ", auxiliar)
    media = auxiliar/10
    escreva ("\nMedia final: ", mat.arredondar(media,3), "\n\n")

  }
}
