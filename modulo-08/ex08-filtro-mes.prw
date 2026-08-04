# Exercício 8 — Desafio: filtro do mês + botão

## Passo a passo

1. Abrir o arquivo **STTIP002.PRW**.

2. Criar a variável **cFiltro** para exibir apenas os pets cadastrados no mês atual.

3. Passar a variável **cFiltro** como parâmetro na chamada da função **mBrowse**.

4. Adicionar um botão personalizado no **aRotina** para remover o filtro e recarregar o browse.

5. Como bônus, criar um botão **Histórico** que exiba uma mensagem com o código e a raça do pet selecionado.

6. Compilar o programa utilizando **F9**.

7. Abrir o **SmartClient** e executar a rotina **STTIP002**.

8. Verificar o funcionamento do filtro e dos botões adicionados.

## Filtro do mês

```advpl
cFiltro := "Month(ZA1->ZA1_DTNASC) == Month(dDataBase) .AND. Year(ZA1->ZA1_DTNASC) == Year(dDataBase)"
```