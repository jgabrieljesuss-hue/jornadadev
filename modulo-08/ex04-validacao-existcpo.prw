# Exercício 4 — Validação com ExistCpo

## Passo a passo

1. Abrir o **Configurador (SIGACFG)**.

2. Acessar o dicionário de dados (SX3) e localizar o campo **ZA1_CLIENT**.

3. Configurar a validação no campo **X3_VALID**, chamando a função:

```advpl
U_VALCLI001()
```

4. Criar a função **VALCLI001()** no arquivo **.PRW**.

5. Compilar o programa utilizando **F9**.

6. Abrir o **SmartClient** e acessar o cadastro de Pets (ZA1).

7. Informar um código de cliente que não exista na tabela **SA1**.

8. Verificar se a mensagem de alerta é exibida e se o cadastro é impedido.

## Código

```advpl
USER FUNCTION VALCLI001()

IF !ExistCpo("SA1", xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA, 1)
    MsgAlert("Cliente não cadastrado na SA1!", "Atenção")
    RETURN .F.
ENDIF

RETURN .T.
```