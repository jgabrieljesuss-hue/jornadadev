Function Main()

    LOCAL cEntrada := ""
    LOCAL nSalario := 0, nReajuste := 0, nNovoSalario := 0

        hb_cdpSelect("PT850")

QOut("================================")
QOut(" Exercício de Reajuste Salarial")        
QOut("================================")
QOut("Digite o salário atual: ")
    ACCEPT To cEntrada
    nSalario := Val(cEntrada)

    IF nSalario < 1000
        nReajuste := nSalario * 0.15
    ELSEIF nSalario >= 1000 .AND. nSalario <= 2000
        nReajuste := nSalario * 0.12
    ELSEIF nSalario > 2000 .AND. nSalario <= 4000
        nReajuste := nSalario * 0.08
    ELSE
        nReajuste := nSalario * 0.05
    ENDIF
    
    nNovoSalario := nSalario + nReajuste
    QOut("O reajuste é: " + ALLTrim(Str(nReajuste)))
    QOut("O novo salário é: " + ALLTrim(Str(nNovoSalario)))

    QOut("================================")
    QOut("Fim do programa.")

Return Nil
