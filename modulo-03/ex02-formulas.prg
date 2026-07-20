#define PI 3.14159 

Function Main()

    LOCAL nEntrada := 0
    LOCAL nRaio := 0, nArea := 0
    LOCAL nCateto1 := 0, nCateto2 := 0, nHipotenusa := 0
    LOCAL nPeso := 0, nAltura := 0, nIMC := 0

        hb_cdpSelect ("PT850")

    QOut("================================")
    QOut("   Exerc¡cio de Formulas")
    QOut("================================")
    QOut("")
    QOut("   µrea do C¡rculo")
    QOut("================================")
    QOut("")
    ACCEPT "Digite o valor do raio: " TO nEntrada
    nRaio := Val(nEntrada)
    nArea := PI * (nRaio ^ 2)
    QOut("µrea do c¡rculo: " + Str(nArea, 08, 2))
    QOut("")


    QOut("   Hipotenusa do Triƒngulo Retƒngulo")
    QOut("================================")
    QOut("")
    ACCEPT "Digite o valor do cateto 1: " TO nEntrada
    nCateto1 := Val(nEntrada)
    ACCEPT "Digite o valor do cateto 2: " TO nEntrada
    nCateto2 := Val(nEntrada)
    nHipotenusa := Sqrt(nCateto1 ^ 2 + nCateto2 ^ 2)
    QOut("Hipotenusa: " + Str(nHipotenusa, 08, 2))
    QOut("")


    QOut("   IMC - Öndice de Massa Corporal")
    QOut("================================")
    QOut("")
    ACCEPT "Digite o peso: " TO nEntrada
    nPeso := Val(nEntrada)
    ACCEPT "Digite o valor da altura: " TO nEntrada
    nAltura := Val(nEntrada)
    nIMC := nPeso / (nAltura ^ 2)
    QOut("IMC: " + Str(nIMC, 08, 2))
    QOut("")


    QOut("================================")
    QOut("   Fim do Exerc¡cio de Formulas")

Return Nil