import UIKit


///***EXERCICIO 1***

let pi = 3.14159
var raio = 2.00
var area = pi * (raio * raio)

print("A = \(area)")


///***EXERCICIO 2***

//Caso 1
let pesoNotaA = 3.5
let pesoNotaB = 7.5
var notaA = 5.0
var notaB = 7.1

var media = (((notaA * pesoNotaA) + (notaB * pesoNotaB)) / (pesoNotaA + pesoNotaB))

print("Média = \(media)")

//Caso 2
var notaC = 0.0
var notaD = 7.1

var media1 = (((notaC * pesoNotaA) + (notaD * pesoNotaB)) / (pesoNotaA + pesoNotaB))
print( "media = \(media1)")


///***EXERCICIO 3***

//Caso 1
var valorA: Int = 5
var valorB: Int = 6
var valorC: Int = 7
var valorD: Int = 8

var difereca = ((valorA * valorB) - (valorC * valorD))

print("DIFERENÇA = \(difereca)")

//Caso 2
valorA = 0
valorB = 0
valorC = 7
valorD = 8

difereca = ((valorA * valorB) - (valorC * valorD))
print("DIFERECA = \(difereca)")


///***EXERCICIO 4***

//Caso 1
var nome: String = "Flavia"
var salario: Double = 500.00
var totalVendas: Double = 1230.30
var porcentagem: Double = 0.15
var comissao: Double = (totalVendas * porcentagem)

var total = salario + comissao

print("\(nome) vai receber um TOTAL = R$ \(total)")

//Caso 2
nome = "Pedro"
salario = 700.00
porcentagem = 0.15
totalVendas = 0.00
comissao = porcentagem * totalVendas

total = salario + comissao
print("\(nome) vai receber um TOTAL = R$ \(total)")


///***EXERCICIO 5***

let pi1 = 3.14159
var raio1 = 3.00
var volume = (4/3.0) * pi * (raio * raio * raio)

print("VOLUME \(volume)")


///***EXERCICIO 6***

//var a: Double = 0.0
//var b: Double = 20.0
//var c: Double = 5.0
//
//var bhaskaraSoma = (-b + (sqrt ((b * b) - 4 * a * c)) / 2 * a)
//
//var bhaskaraSubtracao = (-b - (sqrt ((b * b) - 4 * a * c)) / 2 * a)
//
//if bhaskaraSoma  {
//    <#code#>
//}
//print("\(bhaskaraSoma)")


///***EXERCICIO 7***

//Caso 1
var duracao: Int = 556

var horas = duracao / 3600
var minutos = (duracao / 60) % 60
var segundos = duracao % 60

print("\(horas):\(minutos):\(segundos)")

//Caso 2
duracao = 140153
horas = duracao / 3600
minutos = (duracao / 60) % 60
segundos = duracao % 60

print("\(horas):\(minutos):\(segundos)")


///***EXERCICIO 8***

var quantDias = 400
var ano = quantDias / 365
var meses = (quantDias - 365) / 30
var dia = quantDias - 365 - 30

print("\(quantDias) dias equivalem a: \(ano) ano(s), \(meses) mês(es) e \(dia) dia(s)")


///***EXERCICIO 9***

var a = 2
var b = 3
var c = 2
var d = 6

var soma1 = c + d
var soma2 = a + b


if b > c && d > a && soma1 > soma2 && c > 0 && d > 0 && a % 2 == 0{
    print("Valores aceitos")
} else {
    print("Valores não aceitos")
}


///***EXERCICIO 10***

var number1 = 6.0
var number2 = 4.0
var number3 = 2.0

var perimetroTriangulo = number1 + number2 + number3
var areaTrapezio = ((number1 + number2) * number3) / 2

if number1 > abs(number2 - number3) && number1 < number2 + number3 {
    if number2 > abs(number1 - number3) && number2 < number1 + number3 {
        if number3 > abs(number1 - number2) && number3 < number1 + number2 {
    print("Perimetro = \(perimetroTriangulo)")
        }
    }
} else {
    print("Area = \(areaTrapezio)")
}
