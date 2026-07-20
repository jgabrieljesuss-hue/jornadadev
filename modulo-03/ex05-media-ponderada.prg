Function Main()

    LOCAL cEntrada := ""
    LOCAL nNota1 := 0, nNota2 := 0, nNota3 := 0, nNota4 := 0
    LOCAL nMedia := 0

        hb_cdpSelect ("PT850")

    ACCEPT "Digite a primeira nota: " TO cEntrada
    nNota1 := Val(cEntrada)
    ACCEPT "Digite a segunda nota: " TO cEntrada
    nNota2 := Val(cEntrada)
    ACCEPT "Digite a terceira nota: " TO cEntrada
    nNota3 := Val(cEntrada)
    ACCEPT "Digite a quarta nota: " TO cEntrada
    nNota4 := Val(cEntrada)

    nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / (1 + 2 + 3 + 4)
    QOut("A m‚dia ponderada ‚: " + Str(nMedia, 10, 2))

Return nil    