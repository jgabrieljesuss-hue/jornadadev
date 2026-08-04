# Exercício 6 — Legendas coloridas

## Passo a passo

1. Abrir o arquivo **STTIP002.PRW**.

2. Criar o vetor **aColors** com as regras para definir as cores das linhas do browse.

3. Configurar as seguintes legendas:
   - **Vermelho:** pets com nascimento há mais de 10 anos.
   - **Amarelo:** pets cadastrados na data atual.
   - **Verde:** todos os demais pets.

4. Utilizar as constantes **BR_VERMELHO**, **BR_AMARELO** e **BR_VERDE**, conforme a orientação da aula.

5. Passar o vetor **aColors** como parâmetro na chamada da função **mBrowse**.

6. Compilar o programa utilizando **F9**.

7. Abrir o **SmartClient** e executar a rotina **STTIP002**.

8. Cadastrar ou alterar pets com datas diferentes para verificar se as cores são aplicadas corretamente.

## Código

```advpl
LOCAL aColors := {;
    {"ZA1->ZA1_DTNASC < dDataBase - 30", "BR_VERMELHO"},;
    {"ZA1->ZA1_DTNASC == dDataBase", "BR_AMARELO"},;
    {".T.", "BR_VERDE"};
}

mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors, , , , , .F., , , cFiltro)
```