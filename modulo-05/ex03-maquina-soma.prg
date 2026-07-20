Function Main()

    LOCAL nValor := 0, nTotal := 0, nQtd := 0
    LOCAL cEntrada := ""

        hb_cdpSelect("PT850")

QOut("=============================")        
QOut("    Exerc¡cio de Soma")
QOut("=============================")        

    WHILE .T.
        ACCEPT "Informe um valor para come‡ar a somar: (Digite 0 para encerrar)" TO cEntrada
        nValor := VAL(cEntrada)

        IF nValor == 0
            EXIT
        ENDIF 
        
        nTotal := nTotal + nValor
        nQtd := nQtd + 1
    ENDDO 
    
QOut("===== Resultado da Soma =====")
QOut("Total somado: " + AllTrim(Str(nTotal)))        
QOut("Quantidades de valores somados " + AllTrim(Str(nQtd)))  

Return Nil    