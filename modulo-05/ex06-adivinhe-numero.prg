Function Main()

    LOCAL nSecreto := 0, nI := 0, nPalpite := 0, nTecla := 0
    LOCAL lAcertou := .F.

    nSecreto := hb_RandomInt(1, 100)
    lAcertou := .F.

QOut("Adivinhe o número entre 1 e 100!!! Você possui até 7 tentativas. ")

    FOR nI := 1 TO 7

        ACCEPT "Tentativa " + Str(nI, 2) + " Digite seu palpite: " TO nPalpite
        nPalpite := Val(nPalpite)
        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT 
        ELSEIF nPalpite < nSecreto
            QOut("O número secreto é maior que " + Str(nPalpite, 5))
        ELSE
            QOut("O número secreto é menor que " + Str(nPalpite, 5))
        ENDIF 
        
    NEXT 
    
    IF lAcertou
        QOut("Parabéns! Você acertou o número " + str(nSecreto, 5))
    ELSE
        QOut("Suas tentativas acabaram. O número secreto era: " + Str(nSecreto, 5))
        QOut("Tente novamente!!")
    
    ENDIF 
    
    QOut("Pressione 0 para repetir, ou qualquer outra tecla para sair...")
    nTecla := Inkey(0)

    IF nTecla == 48

      QOut("=============================================")
      QOut("     Começando mais uma vez...")
      QOut("     Boa sorte!!!!!")
      QOut("=============================================")

      Main()

    ELSE
        QOut("Saindo do jogo. Até a próxima!")
    ENDIF 

Return Nil 