// Calculo do IMC



let peso = -70.0
let altura = 1.70

let imc = peso/(altura * altura)


switch imc {
case 0...18.49:
    print("Magreza")
case 18.5...24.9:
    print("Normal")
case 25.0...29.9:
    print("Sobrepeso")
case 30.0...39.9:
    print("Obesidade")
case 40.0...1000:
    print("Obesidade Grave")
default:
    print("Peso indeterminado!")
}



if imc >= 0 && imc <= 18.49 {
    print("Magreza")
}else if (imc >= 18.5 && imc <= 24.9) {
    print("Normal")
}else if (imc >= 25.0 && imc <= 29.9) {
 print("Sobrepeso")
}else if (imc >= 30.0 && imc <= 39.9) {
    print("Obesidade")
}else if (imc >= 40 && imc <= 1000) {
    print("Obesidade grave")
}else {
    print("Peso indeterminado!")
}

