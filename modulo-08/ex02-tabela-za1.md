# Exercício 2 — Completando a tabela ZA1 (o pet ganha um dono)

## Passo a passo

1. Abrir o módulo **Configurador (SIGACFG)**.

2. Acessar o **Dicionário de Dados** e localizar a tabela **ZA1**.

3. Incluir os novos campos da tabela, definindo o tipo e o tamanho conforme a apostila.

4. Configurar o campo **ZA1_NOMCLI** como **Virtual**.

5. No campo **Relação (X3_RELACAO)**, informar a seguinte expressão:

```advpl
POSICIONE("SA1",1,xFilial("SA1")+M->ZA1_CLIENT+M->ZA1_LOJA,"A1_NOME")
```

6. Salvar as alterações da estrutura da tabela.

7. Acessar a configuração de **Índices (SIX)**.

8. Criar o índice **1** com a expressão:

```advpl
ZA1_FILIAL + ZA1_COD
```

9. Criar o índice **2** com a expressão:

```advpl
ZA1_FILIAL + ZA1_CLIENT + ZA1_LOJA
```

10. Salvar os índices criados.

11. Atualizar o dicionário de dados conforme demonstrado em aula.

12. Verificar no **MPSDU** se a estrutura da tabela e os índices foram criados corretamente.