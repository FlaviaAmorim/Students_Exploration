//--------------------------------------
//-- Operadores
//--------------------------------------

var letra : Character = "A"
var nome  : String    = "Q"

let caracter1 = "caf\u{E9}"

//--------------------------------------
//-- Concatenando variáveis ( +  )
//--------------------------------------

var empresa1 : String = "Treinamento"
var empresa2 : String = "iOS"

print(empresa1 + " " + empresa2)
print("\(empresa1) \(empresa2)")

//------------------------------------------------
//-- Literais Inteiros como apresentar / atribuir
//-- Decimal / Binário / Octal / Hexadecimal
//------------------------------------------------
var anoCopaDecimal = 2014
var anoCopaBinaria = 0b11111011110
var anoCopaOctal   = 0o3736
var anoCopaHexa    = 0x7DE

var gravidadeTerraInteiro : Int   = 9
var gravidadeTerraDecimal : Float = 0.78

var gravidadeTerra = Float(gravidadeTerraInteiro) + gravidadeTerraDecimal

//------------------------------------------------

let PI : Double = 3.1415

//-- Apresente o valor inteiro de PI

print(Int(PI))

//-- Operadores Incrementais e Decrementais

var x = 1
var y = 2
var z = 3

x += 1
print(x)

y -= 1
print(y)

//-- Operadores Compostos

//-- Primeiros Passos
var valor = 100

valor = valor + 10
print(valor)

valor %= 10
print(valor)

//--- Operadores de Comparação

var a = 1
var b = 3

a == b
a != b
a > b
a < b
a >= 1
a >= 2
a <= 1
a <= 3
a <= 0

//-- Operador Ternário

let timeCampeao = "PALMEIRAS"

var resultado = (timeCampeao == "SANTOS") ? "Santos Campeão" : timeCampeao + " para SEMPRE"

print(resultado)

//--------------------------------------------------

