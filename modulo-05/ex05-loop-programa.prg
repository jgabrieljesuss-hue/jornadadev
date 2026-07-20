Function Main()

    LOCAL cResposta := ""

    WHILE .T.

        ProcessaAluno()

        ACCEPT "Deseja calcular outro aluno? (S/N): " TO cResposta

        IF Upper(cResposta) != "S"
            EXIT
        ENDIF 
        
    ENDDO

QOut("=====FIM DO PROGRAMA=====")

Return Nil

//=======================================================================

Static Function ProcessaAluno()

    LOCAL cNome := "", cDisciplina := ""
    LOCAL nNota1 := 0, nNota2 := 0, nMedia := 0

    WHILE .T.
        ACCEPT "Informe o nome do aluno: " TO cNome
        IF Len(Trim(cNome)) > 0 
            EXIT
        ENDIF 
QOut("Nome inválido!! O nome não pode ser vazio. ")
    ENDDO


    WHILE .T. 
        ACCEPT "Insira o nome da Disciplina (Apenas as 3 primeiras letras por favor!!): " TO cDisciplina
        IF Len(cDisciplina) == 3 .AND. cDisciplina == Upper(cDisciplina)
            EXIT
        ENDIF 
QOut("Disciplina inválida, digite apenas as 3 primeiras letras! ")
    ENDDO 
    
    WHILE .T.
        ACCEPT "Primeira nota (0 a 10): " TO nNota1
        nNota1 := VAL(nNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT 
        ENDIF 
QOut("Nota inválida. Insira um valor entre 0 e 10")
    ENDDO 
    
    WHILE .T.
        ACCEPT "Segunda nota (0 a 10): " TO nNota2
        nNota2 := VAL(nNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT 
        ENDIF 
QOut("Nota inválida. Insira um valor entre 0 e 10")
    ENDDO 

    nMedia := (nNota1 + nNota2) / 2

QOut("==============================")
QOut("  Informações do Aluno")
QOut("==============================")
QOut("Nome      : " + Trim(cNome))
QOut("Disciplina: " + cDisciplina)
QOut("Nota 1    : " + Str(nNota1, 5, 2))
QOut("Nota 2    : " + Str(nNota2, 5, 2))
QOut("Média     : " + Str(nMedia, 5, 2))

RETURN NIL