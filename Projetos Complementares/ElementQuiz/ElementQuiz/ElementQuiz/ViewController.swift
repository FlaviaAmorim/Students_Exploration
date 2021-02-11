//
//  ViewController.swift
//  ElementQuiz
//
//  Created by flaviaamorim on 10/02/21.
//

import UIKit

enum Mode {
    case flashCard
    case quiz
}

enum State {
    case question
    case answer
    case score
}


class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelAnswer: UILabel!
    @IBOutlet weak var modeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var showAnswerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBAction func showAnswer(_ sender: Any) {
        state = .answer
        
        updateUI()
    }
    
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
            if mode == .quiz {
                state = .score
                updateUI()
                return
            }
        }
        
        state = .question
        
        updateUI()
    }
    
    @IBAction func switchModes(_ sender: Any) {
        if modeSelector.selectedSegmentIndex == 0 {
            mode = .flashCard
        } else {
            mode = .quiz
        }
    }
    
    
    
    var fixedElementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var elementList: [String] = []
    var currentElementIndex = 0
    var mode: Mode = .flashCard {
        didSet {
            switch mode {
            case .flashCard:
                setupFlashCards()
            case .quiz:
                setupQuiz()
            }
            
            updateUI()
        }
    }
    var state: State = .question
//Estado especifico de teste
    var answerIsCorrect = false
    var correctAnswerCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mode = .flashCard
    }
    
//Atualiza a UI no modo ficha de estudo
    func updateFlashCardUI(elementName: String) {
//Campo de texto e teclado
        textField.isHidden = true
        textField.resignFirstResponder()
        
//Rotulo da resposta
        if state == .answer {
            labelAnswer.text = elementName
        } else {
            labelAnswer.text = "?"
        }
        
//Controle segmentado
        modeSelector.selectedSegmentIndex = 0
        
//Botoes
        showAnswerButton.isHidden = false
        nextButton.isEnabled = true
        nextButton.setTitle("Próximo elemento", for: .normal)
    }
    
//Atualiza a UI no modo teste
    func updateQuizUI(elementName: String) {
        
//Campo de texto e teclado
        textField.isHidden = false
        switch state {
        case .question:
            textField.isEnabled = true
            textField.text = ""
            textField.becomeFirstResponder()
        case .answer:
            textField.isEnabled = false
            textField.resignFirstResponder()
        case .score:
            textField.isHidden = true
            textField.resignFirstResponder()
        }

//Rotulo da resposta
        switch state {
        case .question:
            labelAnswer.text = ""
        case .answer:
            if answerIsCorrect {
                labelAnswer.text = "Correto!"
            } else {
                labelAnswer.text = "❌\nResposta correta:" + elementName
            }
        case .score:
            labelAnswer.text = ""
            print("Seu score é \(correctAnswerCount) de \(elementList.count).")
        }
        
        if state == .score {
            displayScoreAlert()
        }
        
//Controle segmentado
        modeSelector.selectedSegmentIndex = 1
        
//Botoes
        showAnswerButton.isHidden = true
        if currentElementIndex == elementList.count - 1 {
            nextButton.setTitle("Mostrar pontuacao", for: .normal)
        } else {
            nextButton.setTitle("Proxima pergunta", for: .normal)
        }
        switch state {
        case .question:
            nextButton.isEnabled = false
        case .answer:
            nextButton.isEnabled = true
        case .score:
            nextButton.isEnabled = false
        }
    }
    
//Atualiza a UI com base no seu modo e estado
    func updateUI() {
        
//Codigo compartilhado
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        switch mode {
        case .flashCard:
            updateFlashCardUI(elementName: elementName)
        case .quiz:
            updateQuizUI(elementName: elementName)
        }
    }
    
//Executa após o usuário pressionar a tecla Return no teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//Pega o texto da textField
        let textFieldContents = textField.text!
//Determina se o usuário respondeu corretamente e atualiza o estado de teste
        if textFieldContents.lowercased() == elementList[currentElementIndex].lowercased() {
            answerIsCorrect = true
            correctAnswerCount += 1
        } else {
            answerIsCorrect = false
        }
//O aplicativo agora deve mostrar a resposta ao usuário
        state = .answer
        updateUI()
        return true
    }
    
//Mostra um alerta com a pontuacao do teste do usuario
    func displayScoreAlert() {
        let alert = UIAlertController(title: "Score", message: "Sua pontuação é \(correctAnswerCount) de \(elementList.count).", preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "OK", style: .default, handler: scoreAlertDismissed(_:))
        alert.addAction(dismissAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func scoreAlertDismissed(_ action: UIAlertAction) {
        mode = .flashCard
    }
    
//Abre uma nova sessao de ficha de estudo
    func setupFlashCards() {
        state = .question
        currentElementIndex = 0
        elementList = fixedElementList
    }
    
//Abre um novo teste
    func setupQuiz() {
        state = .question
        currentElementIndex = 0
        answerIsCorrect = false
        correctAnswerCount = 0
        elementList = fixedElementList.shuffled()
    }
}


