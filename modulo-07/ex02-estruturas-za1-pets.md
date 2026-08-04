# Exercício 2 — A tabela ZA1 (Pets)

## a. Estrutura da tabela ZA1

A tabela ZA1 possui os seguintes campos:

| Campo | Tipo | Tamanho | Descrição |
|-------|------|----------|-----------|
| ZA1_FILIAL | Caractere | 2 | Filial do cadastro (obrigatório) |
| ZA1_COD | Caractere | 6 | Código do pet |
| ZA1_NOME | Caractere | 40 | Nome do pet |
| ZA1_RACA | Caractere | 30 | Raça do pet |
| ZA1_IDADE | Numérico | 3 | Idade do pet |

## b. Que índice faria sentido para a ZA1? Justifique.

Um índice pelo campo **ZA1_COD** seria o mais adequado, pois cada pet pode ser identificado por um código único. Assim como uma lista telefônica organiza os contatos para facilitar a busca, o índice permite localizar um registro de forma mais rápida e organizada.

## c. Explique por que o prefixo da tabela é Z.

O prefixo **Z** é uma convenção do Protheus para identificar tabelas personalizadas, ou seja, tabelas criadas pelo desenvolvedor e que não fazem parte do padrão do sistema. Isso evita conflitos com as tabelas nativas da TOTVS.

## d. Explique por que os campos começam com ZA1_.

Os campos utilizam o prefixo **ZA1_** para indicar a qual tabela pertencem. Essa convenção facilita a organização do dicionário de dados, evita conflitos entre campos de tabelas diferentes e torna o desenvolvimento e a manutenção do sistema mais simples.