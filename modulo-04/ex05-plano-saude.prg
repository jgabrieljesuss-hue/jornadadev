Function Main()

    LOCAL cIdade := "", nIdade := 0
    LOCAL cDependentes := 0, nDependentes := 0
    LOCAL nPlano := 0, NTotalPlano := 0

    hb_cdpSelect("PT850")

    ACCEPT "Digite a idade do benefici√°rio: " TO cIdade
    nIdade := Val(cIdade)

    ACCEPT "Digite o n√∫mero de dependentes: " TO cDependentes
    nDependentes := Val(cDependentes)

    IF nIdade < 25
        nPlano := 180

    ELSEIF nIdade >= 25 .AND. nIdade <= 40
        nPlano := 260

    ELSEIF nIdade > 40 .AND. nIdade <= 60
        nPlano := 380
        
    ELSE
        nPlano := 520
    ENDIF
    
    NTotalPlano := nPlano + (nDependentes * 90)

QOut("================================")
QOut("  Exerc°cio de Plano de Sa£de")
QOut("================================")
QOut("Idade do benefici†rio: " + ALLTrim(Str(nIdade)))
QOut("N£mero de dependentes: " + ALLTrim(Str(nDependentes)))
QOut("Valor do plano: " + ALLTrim(Str(nPlano)))
QOut("Total do plano: " + ALLTrim(Str(NTotalPlano)))

Return nil