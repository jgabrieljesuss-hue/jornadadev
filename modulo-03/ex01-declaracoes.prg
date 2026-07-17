Function Main()

    LOCAL cNome := "Jos‚ Gabriel"
    LOCAL nSalario := 2000.00
    LOCAL lAtivo := .T.
    LOCAL dAdmissao := SToD("20260717")
    LOCAL cCodigoDepartamento := "TI001"

    hb_cdpSelect ("PT850")


QOut("================================")
QOut("   Exerc¡cio de Declara‡äes")
QOut("================================")
QOut("")
QOut("Nome: " + cNome)
QOut("Sal rio: R$" + (Str(nSalario, 08, 2)))
QOut("Ativo: " + IIf(lAtivo, "Sim", "NÆo"))
QOut("AdmissÆo: " + DToC(dAdmissao))
QOut("C¢digo do Departamento: " + cCodigoDepartamento)

Return nil 