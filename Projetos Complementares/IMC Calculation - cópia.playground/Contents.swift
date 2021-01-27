// Cálculo do IMC

// Fórmula de Cálculo: IMC = Peso ÷ (Altura × Altura)

/*
 Faixas de Peso:
 IMC                CLASSIFICAÇÃO    OBESIDADE (GRAU)
 MENOR QUE 18,5     MAGREZA             0
 ENTRE 18,5 E 24,9  NORMAL              0
 ENTRE 25,0 E 29,9  SOBREPESO           I
 ENTRE 30,0 E 39,9  OBESIDADE           II
 MAIOR QUE 40,0     OBESIDADE GRAVE     III
 */

// Cálculo
let peso = 80.5
let altura = 1.82
let imc = peso / (altura * altura)

// Determinação de Faixas - usando Switch
switch imc {
case 0...18.49:
    print("Magreza")
case 18.5...24.9:
    print("Normal")
case 25.0...29.9:
    print("Sobrepeso")
case 30.0...30.9:
    print("Obersidade")
case 40.0...100.0:
    print("Obesidade Grave")
default:
    print("Peso indeterminado")
}

// TODO: Usando If Else


