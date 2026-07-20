Function Main()

    LOCAL nContagem := 0

QOut("====================================")
QOut("  Exercícios de Sequências - FOR")
QOut("====================================")

QOut("Exercício 01 - Contagem de 1 a 100")
    FOR nContagem := 1 TO 100
        QOut(Str(nContagem) + " ")
    NEXT
QOut("")
QOut("Exercício 02 - Contagem de -50 a 50")
    FOR nContagem := -50 TO 50
        QOut(Str(nContagem) + " ")
    NEXT

QOut("")
QOut("Exercício 03 - Contagem de 80 a 5 (Decrescente)")

    FOR nContagem := 80 TO 5 STEP -1
        QOut(Str(nContagem) + "")
    NEXT
QOut("")    
    
    QOut("===============================")
    QOut("      Fim do Programa")
    QOut("===============================")

Return NIL