FUNCTION Main()

    LOCAL cNome := "Jos‚ Gabriel"
    LOCAL cCidade := "SÆo Paulo"
    lOCAL cCurso := "Harbour/ADVPL"
    LOCAL dData := Dtoc(Date())
    LOCAL tHora := Time()

    hb_cdpSelect ("PT850")

    QOut("=============================")
    QOut("  FICHA DE APRESENTA€ÇO")
    QOut("=============================")
    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("Data: " + dData)
    QOut("Hora: " + tHora)
    QOut("=============================")

RETURN NIL