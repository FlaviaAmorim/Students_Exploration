//------------------------------------------------
//-- Desafio Tupla
//------------------------------------------------

// Monte uma tupla com os detalhes do endereço da Foursys Curitiba

var adrees = "Rua comendador araujo"
var number = 499
var burgh = "Centro"
var name_edif = "Edificio Corporate Evolution"
var andar = 10
var city = "Curitiba"
var state = "PR"

var adreesFoursys = ("Rua Comendador Araujo", 499, "Edificio Corporate Evolution", 10, "Centro", "Curitiba", "PR")

adreesFoursys.0
adreesFoursys.1
adreesFoursys.2
adreesFoursys.3
adreesFoursys.4

let (rua, numero, edificio, anda, bairro, cidade, estado) = adreesFoursys
rua
numero
edificio
bairro
anda
cidade
estado

print("A empresa Foursys está localizada na \(rua), nº\(numero), no \(edificio) - \(anda)º andar, \(bairro), \(cidade) - \(estado)"
)
