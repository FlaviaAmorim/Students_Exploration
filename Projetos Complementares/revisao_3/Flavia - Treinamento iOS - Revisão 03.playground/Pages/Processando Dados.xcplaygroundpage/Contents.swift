/*:
 ## Ranking
 
 Quando iniciamos o exercício de *ranking*, no playground que tratou de processamento de dados, imaginamos que os exercícios iriam nos levar a calcular o ranking sequencialmente, seja em ordem crescente ou decrescente.
 
 Mas na realidade o exercício utilizou cálculos estatísticos, dividindo os shows em camadas, mais ou menos populares.
 
 Para resgatar o sentimento que tivemos no momento de percorrer aquele *book*, iremos agora criar os rankings sequenciais.

 Para efeito de referência, o código original foi mantido para eventual referência.

 */
// Create three arrays to store shows in each tier. You can choose to store `TabulatedValue` instances, or just strings.


var notVeryPopular = [TabulatedValue]
var moderatelyPopular = [TabulatedValue]()
var veryPopular = [TabulatedValue]()

// Create constants to store the median and the median absolute deviation.
let median = tabulator.median()
let medianAbDev = tabulator.medianAbsoluteDeviation()

for show in tabulator.tabulatedValues {
    if show.count < median - medianAbDev {
        // If the show's count is less than the median value minus the median absolute deviation, it's not very popular.
        notVeryPopular.append(show)
    } else if show.count > median + medianAbDev {
        // If the show's count is greater than the median value plus the median absolute deviation, it's very popular.
        veryPopular.append(show)
    } else {
        // Otherwise, it's moderately popular.
        moderatelyPopular.append(show)
    }
}

// Print out the shows in each tier.
print("***** MENOS POPULARES *****")
print(notVeryPopular)

print("***** MAIS OU MENOS MENOS POPULARES *****")
print(moderatelyPopular)

print("***** MAIS POPULARES *****")
print(veryPopular)
//: - callout(Exercício 1): Crie um ranking de shows, com popularidade em ordem crescente.
var todas = veryPopular + moderatelyPopular + notVeryPopular
todas.sort()
print(todas)
//: - callout(Exercício 2): Crie um ranking de shows, com popularidade em ordem decrescente.


//: - callout(Exercício 3): Será que é possível utilizar uma única função, e determinar como parâmetro a ordem do ranking? Se achar que sim, codifique essa solução.



//: [Anterior](@previous)  |  página 6 of 6

