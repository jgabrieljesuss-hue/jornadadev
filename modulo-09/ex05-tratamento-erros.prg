// Exercício 5 - Tratamento de Erro (Harbour Puro)

FUNCTION Main()
    LOCAL nA        := 10
    LOCAL nB        := 0
    LOCAL nRes      := 0
    LOCAL bOldError := NIL
    LOCAL oErro     := NIL

    bOldError := ErrorBlock( { |e| Break( e ) } )

    BEGIN SEQUENCE
        
        nRes := nA / nB
        QOut( "Resultado: " + AllTrim( Str( nRes ) ) )

    RECOVER USING oErro
        
        IF oErro != NIL
            QOut( "Erro capturado: " + AllTrim( oErro:Description ) )
        ELSE
            QOut( "Erro capturado (sem objeto de erro detalhado)." )
        ENDIF
    END SEQUENCE

    IF bOldError != NIL
        ErrorBlock( bOldError )
    ENDIF

    QOut( "O programa continua de pé!" )

    RETURN NIL