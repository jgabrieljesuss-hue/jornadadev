Function Main()

    LOCAL cNome := ""
    LOCAL cDisciplina := ""
    LOCAL cNota1 := "", cNota2 := ""
    LOCAL nNota1 := 0, nNota2 := 0
    LOCAL nMedia := 0
    
QOut("=========================")
QOut("  Validação de Notas")
QOut("=========================")
QOut("")

    DO WHILE .T.
    ACCEPT "Informe o nome do aluno: " TO cNome
    IF Len(Trim(cNome)) > 0
        EXIT
    ENDIF 
QOut("O nome do aluno deve ser preenchido!!! ")

    ENDDO

QOut("Nome aceito: " + cNome)

    DO WHILE .T.
        ACCEPT "Digite a primeira nota: " TO cNota1
        nNota1 := VAL(cNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF 
        
Qout("A nota deve ser entre 0 e 10!!!")

    ENDDO

QOut("A primeira nota foi aceita: " + AllTrim(Str(nNota1, 5, 2)))

    DO WHILE .T.
        ACCEPT "Digite a segunda nota: " TO cNota2
        nNota2 := VAL(cNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF 
    
QOut("A nota deve estar entre 0 e 10!!!")

    ENDDO

Qout("A segunda nota foi aceita: " + AllTrim(Str(nNota2, 5, 2))) 

nMedia := (nNota1 + nNota2) / 2
 
QOut("=========================")
QOut("  Informações do Aluno")
QOut("=========================")
QOut("")
QOut("Nome      : " + Trim( cNome ))
QOut("Disciplina: " + cDisciplina)
QOut("Nota 1    : " + Str( nNota1, 5, 2 ))
QOut("Nota 2    : " + Str( nNota2, 5, 2 ))
QOut("Média     : " + Str( nMedia, 5, 2 ))
QOut(" ")


Return Nil    