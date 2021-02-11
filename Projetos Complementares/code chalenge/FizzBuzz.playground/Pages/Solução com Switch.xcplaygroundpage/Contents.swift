/*:
## Solução do FizzBuzz com Switch Case
 
 Uma boa alternativa para solucionar o enigma é utilizando switch e, naturalmente, um loop também:
 
 */
// Codifique aqui sua solução

let divisibleThree = 3
let divisibleFive = 5
let resto = 0

for numero in 1...100 {
    switch (numero % divisibleThree == resto, numero % divisibleFive == resto) {
    case (true, true):
        print("\(numero) FizzBuzz")
    case (true, false):
        print("\(numero) Fizz")
    case (false, true):
        print("\(numero) Buzz")
    default:
        break
    }
}
/*:
[Anterior](@previous)  |  página 7 of 3
 */
