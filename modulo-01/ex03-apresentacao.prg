FUNCTION Main()

    LOCAL cNome := "Jos‚  Gabriel"
    LOCAL cCidade := "SÆo Paulo"
    lOCAL cCurso := "Harbour/ADVPL"

    hb_cdpSelect ("PT850")

    QOut("=============================")
    QOut("  FICHA DE APRESENTA€ÇO")
    QOut("=============================")
    QOut("Nome: " + cNome)
    QOut("Cidade: " + cCidade)
    QOut("Curso: " + cCurso)
    QOut("=============================")

RETURN NIL