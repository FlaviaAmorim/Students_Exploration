/*:
## Funções
 Como sabermos que funções é um tópico essencial em lógica de programação, iremos reforçar esse conceito com mais alguns exercícios.
 
 Vamos supor que queremos dar uma mensagem de boas-vindas a quem logar em nosso sistema. Se não conhecêssemos funções, faríamos da seguinte forma:
 */
//print("Olá, Andrey, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Cassiane, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, David, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Diego, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Flávia, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Jonatan, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Victor, a Foursys dá as boas-vindas ao treinamento de iOS")
//print("Olá, Willian, a Foursys dá as boas-vindas ao treinamento de iOS")

//:  - callout(Exercício 1): O código acima está bastante repetitivo não é mesmo? Imagine codificar desta forma para a turma de Java, que tem muito mais alunos. Sendo assim, crie uma função que receba como argumento o nome do aluno e imprima a mensagem de boas-vindas, sem retornar nenhum valor. Para testar a função, efetue a chamada passando como parâmetro o nome de cada aluno:

// Codifique aqui a função

func welcome (name: String) {
    print("Olá, \(name), a Foursys dá as boas-vindas ao treinamento de iOS." )
}

// Codifique aqui as chamadas da função

welcome(name: "Andrey")
welcome(name: "Cassiane")
welcome(name: "David")
welcome(name: "Diego")
welcome(name: "Flavia")
welcome(name: "Jonathan")
welcome(name: "Victor")
welcome(name: "Willian")
//:  - callout(Exercício 2): Com a solução do primeiro exercício já tivemos uma melhora do código, porém recebemos uma nova solicitação para separar a identificação do aluno em nome e sobrenome. Sendo assim, crie uma nova versão da função com dois argumentos, e adapte as chamadas de função para passar a utilizar dois argumentos:

// Codifique aqui a função

func welcome (firstName: String, lastName: String) {
    print("Olá, \(firstName) \(lastName), a Foursys dá as boas-vindas ao treinamento de iOS." )
}


//// Codifique aqui as chamadas da função

welcome(firstName: "Andrey", lastName: "Masiero")
welcome(firstName: "Cassiane", lastName: "da Silva")
welcome(firstName: "David", lastName: "Lima")
welcome(firstName: "Diego", lastName: "Lazanha")
welcome(firstName: "Flavia", lastName: "Amorim")
welcome(firstName: "Jonathan", lastName: "Eduardo")
welcome(firstName: "Victor", lastName: "Otavio")
welcome(firstName: "Willian", lastName: "Gonçalves")


//:  - callout(Exercício 3): Após uma revisão de código, o time decidiu refatorar a função desenvolvida nos exercícios acima para que ela prepare a mensagem de boas-vindas, mas não imprima a mensagem. Sendo assim, crie mais uma versão da função que receba os argumentos e retorne a mensagem de boas-vindas. Quem chamou a função é quem deve receber a mensagem e imprimir seu conteúdo:

// Codifique aqui a função

func welcomeTo (firstName: String, lastName: String) -> String {
    return "Olá, \(firstName) \(lastName), a Foursys dá as boas-vindas ao treinamento de iOS."
}


// Codifique aqui as chamadas da função

print(welcomeTo(firstName: "Andrey", lastName: "Masiero"))
print(welcomeTo(firstName: "Cassiane", lastName: "da Silva"))
print(welcomeTo(firstName: "David", lastName: "Lime"))
print(welcomeTo(firstName: "Diego", lastName: "Lazanha"))
print(welcomeTo(firstName: "Flavia", lastName: "Amorim"))
print(welcomeTo(firstName: "Jonathan", lastName: "Eduardo"))
print(welcomeTo(firstName: "Victor", lastName: "Otavio"))
print(welcomeTo(firstName: "Willian", lastName: "Gonçalves"))
/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/Functions.html)

[Anterior](@previous)  |  página 2 de 6 |  [Próximo: Tomada de Decisões](@next)
 */
