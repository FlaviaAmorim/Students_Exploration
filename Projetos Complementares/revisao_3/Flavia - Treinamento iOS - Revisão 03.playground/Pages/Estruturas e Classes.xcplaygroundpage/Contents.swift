/*:
## Estruturas e Classes
 Em nosso treinamento mencionamos que as estruturas e as classes possuem recursos muito parecidos. Neste exercício iremos explorar melhor essas diferenças e saber quando utilizar uma ou outra.
 */

 /*:
 - Experiment: A seguir está definida uma classe padrão em Swift, que segue os mesmos conceitos de classe do paradigma de orientação a objetos.
 */
 
class FlightClass {
    var id:Int
    var description:String
    var destination:String
    var airlines:String
    var status:String
    init(id: Int, description: String, destination: String, airlines: String, status: String) {
        self.id = id
        self.description = description
        self.destination = destination
        self.airlines = airlines
        self.status = status
    }
    func flightStatus(id: Int) -> String {
        if self.id == id {
            return status
        } else {
            return "vôo não encontrado"
        }
    }
}
 
//:  - callout(Exercício 1): Com os conhecimentos adquiridos na aula de Estruturas, codifique uma estrutura com as mesmas propriedades da classe declarada anteriormente:
struct Flight {
    var id: Int
    var description: String
    var destination: String
    var airlines: String
    var status: String
}

    func flightStatus(id: Int) -> String {
        if self.id == id {
            return status
        } else {
            return "vôo não encontrado"
        }
    }
//:  - callout(Exercício 2): No código a seguir, a classe foi instanciada. Codifique o comando semelhante para instanciar a estrutura em Swift:

// Instancie a classe
var flightA = FlightClass(id: 100, description: "first ever flight of Virgin Airlines", destination: "london", airlines: "Virgin Airlines", status: "delayed")


// Instancie a estrutura
let gol = Flight(id: 100, description: "Voo de Curitiba", destination: "Sao Paulo", airlines: "Gol", status: "Decolando")
//:  - callout(Exercício 3): No código a seguir, as propriedades e os métodos da classe foram referenciados. Codifique o comando semelhante para referenciar as propriedades da estrutura:

// Acesse as propriedades e métodos da classe
flightA.id
flightA.description
flightA.destination
flightA.airlines
flightA.status

flightA.flightStatus(id: 100)
flightA.flightStatus(id: 200)


// Acesse as propriedades e métodos da estrutura
gol.id
gol.description
gol.destination
gol.airlines
gol.status

gol.flightStatus(id: 300)
/*:
- Experiment: Você deve ter observado até aqui que as classes e estruturas são bastante parecidas. Mas na realidade elas possuem uma diferença importante no iOS. As classes são tipos de referência enquanto as estruturas são tipos de valor. Vamos entender melhor:
*/

// Quando você copia uma instância de uma classe, ela aponta para o mesmo endereço da instância original
flightA.status
let flightC = flightA
flightC.status = "scheduled"
flightC.status
flightA.status      // !?!?!? Como isso é possível !?!?!?

// Faça o mesmo teste com a estrutura, e veja que o comportamento é diferente. Isso porque quando você copia uma instância de estrutura, a estrutura toda é copiada, e não apenas sua referência de memória.
gol.status
var gol1 = gol
gol1.status = "Pousando"
gol1.status
gol.status

/*:
- Experiment: A conclusão é que você deve priorizar o uso de estruturas ao invés de classes. Os tipos de valor, como as estruturas, são mais rápidos, seguros e menos sujeitos a erros de gerenciamento de memória - *memory leaks*, ou ainda *deadlocks* causados por referências cruzadas. As classes são necessárias se você precisar de herança de propriedades e métodos, porém em Swift os protocolos podem substituir as classes neste quesito também. A única situação em que não se consegue se escapar das classes é quando você está trabalhando com frameworks nativos construídos sob o paradigma da orientação a objetos, como o UIKit. Mas para criar os seus próprios tipos, estude o novíssimo paradigma da orientação a protocolos. É fascinante!
*/
/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)


[Anterior](@previous)  |  página 2 de 6  |  [Próximo: Enums](@next)
 */
