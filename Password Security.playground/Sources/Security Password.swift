import Foundation

let tenMostCommonPasswords = [
    "123456",
    "password",
    "12345678",
    "qwerty",
    "12345",
    "123456789",
    "letmein",
    "1234567",
    "football",
    "iloveyou"
]

let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "
//let userName = ""


public func validPassword (password: String, id: String) -> Bool {

var msgError = String()

//Primeiras verificacoes
    if tenMostCommonPasswords.contains(password) {
    msgError += "Essa senha não pode ser usada! Utilize uma senha mais forte"
}

if password.count < 16 {
    msgError += "A senha deve conter pelo menos 16 caracteres"
}


// Demais verificacoes
var numberOfDigits = 0
var numberOfPunctuationCharacters = 0
var numberOfRegularLetters = 0
var numberOfUpperLetters = 0
    
    for character in password {
        if digits.contains(character) {
            numberOfDigits += 1
        } else if punctuation.contains(character) {
            numberOfPunctuationCharacters += 1
        //Custom Algorithm
        } else if character.isUppercase {
            numberOfUpperLetters += 1
        } else {
            numberOfRegularLetters += 1
        }
    }
    
    //Advance Rule
    if password.contains(id) {
        msgError += "A senha não pode ser igual ao nome do usuario"
    }
    
    if numberOfUpperLetters == 0 {
        msgError += "A senha deve conter pelo menos uma letra maiuscula"
    }
    
    if numberOfDigits == 0 {
        msgError += "A senha deve conter pelo menos um digito\n"
    }
    if numberOfPunctuationCharacters == 0 {
        msgError += "A senha deve conter pelo menos um caracter de pontuacao: \(punctuation)\n"
    }
    if numberOfRegularLetters == 0 {
        msgError += "A senha deve conter pelo menos uma letra\n"
    }
        
    
    //Verifica se houve algum erro de verificacao
    if msgError.isEmpty {
        return true
    } else {
        print(msgError)
        return false
    }
}
