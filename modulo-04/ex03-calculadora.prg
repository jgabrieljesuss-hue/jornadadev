Function Main()

    LOCAL cEntrada
    LOCAL nNumero1 := 0, nNumero2 := 0, nOperacao := 0, nResultado := 0

        hb_cdpSelect("PT850")

    QOut("================================")
    QOut("   Exerc°cio de Calculadora")
    QOut("================================")
    QOut("Digite o primeiro n£mero: ")
    ACCEPT To cEntrada
    nNumero1 := Val(cEntrada)

    QOut("Digite o segundo n£mero: ")
    ACCEPT To cEntrada
    nNumero2 := Val(cEntrada)

    QOut("Escolha a operaá∆o desejada:")
    QOut("1 - Adiá∆o")
    QOut("2 - Subtraá∆o")
    QOut("3 - Multiplicaá∆o")
    QOut("4 - Divis∆o")
    QOut("5 - Potància")
    QOut("6 - Raiz Quadrada")
    QOut("")
    ACCEPT To cEntrada
    nOperacao := Val(cEntrada)

    DO CASE
        CASE nOperacao == 1
            nResultado := nNumero1 + nNumero2
            QOut("O resultado da adiá∆o Ç: " + ALLTrim(Str(nResultado)))
        CASE nOperacao == 2
            nResultado := nNumero1 - nNumero2
            QOut("O resultado da subtraá∆o Ç: " + ALLTrim(Str(nResultado)))
        CASE nOperacao == 3
            nResultado := nNumero1 * nNumero2
            QOut("O resultado da multiplicaá∆o Ç: " + ALLTrim(Str(nResultado)))
        CASE nOperacao == 4
            IF nNumero2 != 0
                nResultado := nNumero1 / nNumero2
                QOut("O resultado da divis∆o Ç: " + ALLTrim(Str(nResultado)))
            ELSE
                QOut("Erro: Divis∆o por zero n∆o Ç permitida.")
            ENDIF
        CASE nOperacao == 5
            nResultado := nNumero1 ** nNumero2
            QOut("O resultado da potància Ç: " + ALLTrim(Str(nResultado)))
        CASE nOperacao == 6
            IF nNumero1 >= 0
                nResultado := Sqrt(nNumero1)
                QOut("O resultado da raiz quadrada Ç: " + ALLTrim(Str(nResultado)))
            ELSE
                QOut("Erro: Raiz quadrada de n£mero negativo n∆o Ç permitida.")
            ENDIF
        OTHERWISE
            QOut("Operaá∆o inv†lida.")
    ENDCASE

Return nil