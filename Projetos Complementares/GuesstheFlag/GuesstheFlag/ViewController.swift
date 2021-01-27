//
//  ViewController.swift
//  GuesstheFlag
//
//  Created by flaviaamorim on 19/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var correctAnswer = 0
    var question = 0
    var score = 0
  
    @IBAction func touchButton(_ sender: UIButton) {
        var result: String
        
        if sender.tag == correctAnswer {
            result = "Correto"
            score += 1
        } else {
            result = "Errado. A bandeira selecionada é do \(countries[sender.tag].uppercased())"
            score -= 1
        }
        
        if question < 10 {
            let alert = UIAlertController(title: result, message: "Sua pontuação é \(score)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "continuar".uppercased(), style: .default, handler: questions))
            present(alert, animated: true)
        } else {
            let alertFinal = UIAlertController(title: "Fim de jogo", message: "Sua pontuação final é \(score)", preferredStyle: .alert)
            alertFinal.addAction(UIAlertAction(title: "Novo jogo", style: .default, handler: startGame))
            present(alertFinal, animated: true)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Score", style: .plain, target: self, action: #selector(showScore))
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]

        setupButton()
        questions()
        
    }
    
    func setupButton() {
        button1.layer.borderColor = UIColor.gray.cgColor
        button2.layer.borderColor = UIColor.gray.cgColor
        button3.layer.borderColor = UIColor.gray.cgColor
        
        button1.layer.borderWidth = 2
        button2.layer.borderWidth = 2
        button3.layer.borderWidth = 2
    }
    
    func questions(alert: UIAlertAction! = nil) {
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        let country = countries[correctAnswer].uppercased()
        title = country
        
        question += 1
    }
    
    func startGame(alert: UIAlertAction) {
        score = 0
        question = 0
        
        questions()
    }
    
//    @objc func showScore() {
//        let scoreAert = UIAlertController(title: "SCORE", message: nil, preferredStyle: .actionSheet)
//        scoreAert.addAction(UIAlertAction(title: "Seu score é \(score)", style: .default, handler: nil))
//
//        present(scoreAert, animated: true)
//    }


}

