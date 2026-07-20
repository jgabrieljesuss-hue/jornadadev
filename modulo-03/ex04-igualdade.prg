Function Main()

    LOCAL cTexto1 := "", cTexto2 := ""

        hb_cdpSelect ("PT850")

    QOut("================================")
    QOut("   Exercício de Igualdade")
    QOut("================================")
    QOut("")

    ACCEPT "Digite o primeiro texto: " TO cTexto1
    ACCEPT "Digite o segundo texto: " TO cTexto2

// NESSE CASO APENAS O INÍCIO DA STRING É COMPARADO

    IF cTexto1 = cTexto2
        QOut("Os textos são iguais.")
    ELSE
        QOut("Os textos são diferentes.")
    ENDIF
    
// NESSE CASO A COMPARAÇÃO É FEITA POR COMPLETO

    ACCEPT "Digite o primeiro texto: " TO cTexto1
    ACCEPT "Digite o segundo texto: " TO cTexto2
    
    IF cTexto1 == cTexto2
        QOut("Os textos são iguais.")
    ELSE
        QOut("Os textos são diferentes.")
    ENDIF    

QOut("================================")
QOut("   Fim do Exercício de Igualdade")

Return nil