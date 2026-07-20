Function Main()

    LOCAL cEntrada := ""
    LOCAL nValor := 0

QOut("========================")
QOut("   Exec¡cio Dobro")
QOut("========================")

    WHILE .T.
        ACCEPT 'Digite um n£mero inteiro (Para sair digite "0")' TO cEntrada
        nValor :=VAL(cEntrada)

        IF nValor <= 0
            exit
        ENDIF 
        
QOut("O dobro de " + AllTrim(Str(nValor)) + "  " + AllTrim(Str(nValor * 2)))

    ENDDO

QOut("========================")
QOut("   Fim do Programa")
QOut("========================")    

Return Nil    