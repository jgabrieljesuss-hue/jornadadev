Function Main()

    LOCAL cNome := "", cEntrada := ""
    LOCAL dNascimento 
    LOCAL nIdade := 0, nPreco := 0, nDesconto:= 0, nPrecoFinal := 0

        hb_cdpSelect ("PT850")

    QOut("================================")
    QOut("   Exercício de Descontos Idoso")
    QOut("================================")
    QOut("")
    ACCEPT "Digite o nome do cliente: " TO cNome
    ACCEPT "Digite a data de nascimento (dd/mm/aaaa): " TO cEntrada
    dNascimento := CToD(cEntrada)
    ACCEPT "Digite o preço do produto: " TO cEntrada
    nPreco := Val(cEntrada)

    nIdade := INT((Date() - dNascimento) / 365)

    IF nIdade >= 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0    
    ENDIF

    nPrecoFinal := nPreco - nDesconto
    QOut("Nome: " + cNome)
    QOut("Idade: " + Str(nIdade, 10, 02))
    QOut("Preço: " + Str(nPreco, 10, 02))
    QOut("Desconto: " + Str(nDesconto, 10, 02))
    QOut("Preço Final: " + Str(nPrecoFinal, 10, 02))
Return nil