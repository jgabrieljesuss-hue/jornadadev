Function Main()

    LOCAL cEntrada
    LOCAL nNumero1 := 0, nNumero2 := 0

        hb_cdpSelect("PT850")

    QOut("================================")
    QOut("   Exercício de Comparação")
    QOut("================================")
    QOut("Digite o primeiro número: ")
    ACCEPT To cEntrada
    nNumero1 := Val(cEntrada)

    QOut("Digite o segundo número: ")
    ACCEPT To cEntrada
    nNumero2 := Val(cEntrada)

    IF nNumero1 == nNumero2
        QOut("Os números são iguais.")
        Break  //ENCERRA O PROGRAMA CASO OS NÚMEROS SEJAM IGUAIS.
    ENDIF
    
    IF nNumero1 > nNumero2
        QOut("O maior número é: " + ALLTrim(Str(nNumero1)))
        QOut("O menor número é: " + ALLTrim(Str(nNumero2)))
    ELSE
        QOut("O maior número é: " + ALLTrim(Str(nNumero2)))
        QOut("O menor número é: " + ALLTrim(Str(nNumero1)))
    ENDIF    

Return nil
