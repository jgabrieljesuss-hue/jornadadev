FUNCTION Main()

    LOCAL cNome := "Jos‚ Gabriel"
    LOCAL cCidade := "SÆo Paulo"
    LOCAL cFrase := "Pronto para aprender ADVPL!"

    hb_cdpSelect ("PT850")

    QOut("Ol , " + cNome + "!")
    QOut("Cidade: " + cCidade + "!")
    QOut(cFrase)

RETURN NIL