/*:
## Solução do FizzBuzz com Condicionais
 
 A solução mais utilizada para o desafio é utilizando condicionais e, naturalmente, um loop:
 
 */
// Codifique aqui sua solução
let divisibleThree = 3
let divisibleFive = 5
let resto = 0

for numero in 1...100 {
    if numero % divisibleThree == resto && numero % divisibleFive == resto{
        print("\(numero) FizzBuzz")
    } else if numero % divisibleThree == resto {
    print("\(numero) Fizz")
    } else if numero % divisibleFive == resto {
        print("\(numero) Buzz")
    }
}
/*:
[Anterior](@previous)  |  página 2 de 3  |  [Próximo: Solução com Switch](@next)
 */
