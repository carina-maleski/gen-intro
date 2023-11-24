/*
Dado um vetor contendo 10 números inteiros não ordenados, construa um algoritmo que 
consiga ordenar o vetor em ordem decrescente.

Na construção do Algoritmo, utilize os seguintes conteúdos:
Saída de dados
Laços Condicionais
Laços de Repetição
*/

programa {
  inclua biblioteca Util

  funcao inicio() {
    inteiro exercicio[] = {2,4,1,3,4,9,7,8,10,6}
    inteiro auxiliar

    para (inteiro posicao = 0; posicao <=9; posicao++)
    {
      para (inteiro proximo = posicao; proximo < 9; proximo++)
      {
        se (exercicio[posicao] < exercicio[proximo+1])
        {
          auxiliar = exercicio[posicao]
          exercicio[posicao] = exercicio[proximo+1]
          exercicio[proximo+1] = auxiliar
        }
      }
    }    
    para (posicao = 0; posicao <10; posicao++)
    {
      escreva (exercicio[posicao], "\n")
    }
  }
}
