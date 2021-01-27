//-------------------------------------------------
//-- Tuplas
//-------------------------------------------------

var nome_pais       : String = "Brasil"
var nome_continente : String = "América do Sul"
var nome_sigla_www  : String = "br"
var nome_ddi        : Int    = 55

var dominioBrasil = ("br", "Brasil", "América do Sul", 55, true, 210_000_000)

dominioBrasil.2
dominioBrasil.4

let (dominio, pais, continente, ddi, rico, populacao) = dominioBrasil
dominio
pais
populacao

print("País \(pais) está no continente: \(continente) \(dominioBrasil.3)")


















