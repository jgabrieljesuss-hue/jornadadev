# Exercício 1 — AxCadastro × mBrowse

## a. Quando você usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

O **AxCadastro** é utilizado para criar telas simples de cadastro, permitindo incluir, alterar, excluir e consultar registros. Um exemplo é um cadastro de pets (ZA1). Já o **mBrowse** é usado para exibir uma lista de registros com recursos de pesquisa, filtros e legendas, como em um cadastro de clientes.

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

- Exibe os registros em formato de grade (lista).
- Permite configurar legendas com cores para destacar informações.
- Possui recursos de pesquisa, filtros e ordenação dos registros.

## c. Na configuração de legendas (aColors), por que a regra ".T." deve ficar por último?

A regra **.T.** representa uma condição sempre verdadeira. Ela deve ficar por último porque, se for colocada antes das demais, será executada primeiro e impedirá que as outras regras sejam avaliadas.

## d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

O **campo Virtual (X3_RELACAO)** apenas exibe uma informação relacionada de outra tabela, sem gravá-la no banco de dados. Já o **gatilho (SX7)** executa uma ação automaticamente quando um campo é preenchido ou alterado, podendo copiar ou atualizar informações em outro campo.