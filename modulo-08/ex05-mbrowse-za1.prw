# Exercício 5 — Refazendo com mBrowse

## Passo a passo

1. Criar um novo arquivo chamado **STTIP002.PRW**.

2. Configurar a rotina para utilizar a tabela **ZA1**.

3. Definir os mesmos campos e os mesmos botões utilizados na rotina com **AxCadastro**.

4. Substituir a chamada do **AxCadastro** pela função **mBrowse**.

5. Compilar o programa utilizando **F9**.

6. Abrir o **SmartClient**.

7. Executar a rotina **STTIP002**.

8. Verificar se o **mBrowse** exibe os registros da tabela **ZA1** corretamente.

9. Comparar o funcionamento da tela com a rotina criada no Exercício 3, observando que o **mBrowse** apresenta os registros em formato de lista e oferece recursos adicionais de navegação.

## Chamada do mBrowse

```advpl
mBrowse(1, 1, 22, 75, "ZA1", , , , , , , , , , , , , , cFiltro)
```