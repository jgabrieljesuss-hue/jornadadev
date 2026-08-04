# Exercício 5 — A1_FILIAL e xFilial()

## a. Por que existe o campo A1_FILIAL na tabela SA1?

O campo **A1_FILIAL** identifica a qual filial pertence cada registro. Ele é obrigatório porque o Protheus pode trabalhar com várias filiais, permitindo que os dados sejam organizados e separados corretamente. Por esse motivo, toda tabela, inclusive a **ZA1**, deve possuir um campo de filial.

## b. O que a função xFilial() tem a ver com isso?

A função **xFilial()** retorna automaticamente a filial correta para a tabela utilizada pelo programa. Se a filial fosse escrita manualmente, poderiam ocorrer erros caso o sistema fosse utilizado em outra filial, comprometendo a localização e o cadastro dos registros.