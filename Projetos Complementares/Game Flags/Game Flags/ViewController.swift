//
//  ViewController.swift
//  Game Flags
//
//  Created by flaviaamorim on 20/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    var countries = [String]()
    var score = 0
    var answerCorrect = 0
    var question = 0
    
    
    @IBAction func touchButton(_ sender: UIButton) {
        var result: String
        
        if sender.tag == answerCorrect  {
            result = "Resposta \(question) de 10:\n\nCorreto!"
            score += 1
        } else {
            result = "Resposta \(question) de 10:\n\nErrado! Essa é a bandeira do país: \(countries[sender.tag].uppercased())"
        }
        
        if question < 10 {
            let alert = UIAlertController(title: result, message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "CONTINUE", style: .default, handler: questions))
            present(alert, animated: true)
        } else {
            let alertFinal = UIAlertController(title: "FIM DE JOGO!\n", message: score > 6 ? "Seu score total foi: \(score). \nParabéns!" : "Seu score total foi: \(score) \nVocê pode melhorar!", preferredStyle: .alert)
            alertFinal.addAction(UIAlertAction(title: "Iniciar novo jogo", style: .default, handler: newGame))
            present(alertFinal, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Estônia", "França", "Germânia", "Irlanda", "Itália", "Mônaco", "Nigéria", "Polônia", "Russia", "Espanha", "Reino Unido", "USA"]
        
        questions()
        setupButton()

    }

    func questions(alert: UIAlertAction! = nil) {
        
        countries.shuffle()
        answerCorrect = Int.random(in: 0...2)
        label1.text = "Clique na bandeira do país: \(countries[answerCorrect])"
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        label3.text = String (score)
        
        question += 1
}

    func newGame(action: UIAlertAction) {
        score = 0
        question = 0
        
        questions()
    }
    
    func setupButton() {
        button1.layer.borderColor = UIColor.black.cgColor
        button2.layer.borderColor = UIColor.black.cgColor
        button3.layer.borderColor = UIColor.black.cgColor
        
        button1.layer.borderWidth = 2
        button2.layer.borderWidth = 2
        button3.layer.borderWidth = 2
    }

}
