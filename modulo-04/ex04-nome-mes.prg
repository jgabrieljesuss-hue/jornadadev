function Main()

    LOCAL nNumeroMes := 0
    LOCAL aNomeMes := { "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", ;
                        "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }

QOut("================================")
QOut("   Exercício de Nome do Mês")
QOut("================================")

    INPUT "Digite o número do mês (1 a 12): " TO nNumeroMes

    IF nNumeroMes >= 1 .AND. nNumeroMes <= 12
        QOut("O nome do mês correspondente é: " + aNomeMes[nNumeroMes])
    ELSE
        QOut("Número de mês inválido. Por favor, digite um número entre 1 e 12.")
    ENDIF

QOut("================================")
QOut("Fim do programa.")

Return nil