//
//  ViewController.swift
//  RPS
//
//  Created by flaviaamorim on 09/02/21.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbSignComputer: UILabel!
    @IBOutlet weak var lbStatus: UILabel!
    @IBOutlet weak var btnRock: UIButton!
    @IBOutlet weak var btnPapper: UIButton!
    @IBOutlet weak var btnScissors: UIButton!
    @IBOutlet weak var btnPlayAgain: UIButton!
    
    
    @IBAction func btnRockChoice(_ sender: Any) {
        play(userSign: .rock)
    }
    
    @IBAction func btnPapperChoice(_ sender: Any) {
        play(userSign: .papper)
    }
    
    @IBAction func btnScissorsChoice(_ sender: Any) {
        play(userSign: .scissors)
    }
    
    @IBAction func btnPlayAgain(_ sender: Any) {
        updateUI(state: .start)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(state: .start)
    }

    func updateUI(state:GameStates) {
        lbStatus.text = state.status
        
        switch state {
        case .start:
            view.backgroundColor = .gray
            lbSignComputer.text = "🤖"
            btnPlayAgain.isHidden = true
            
            btnRock.isHidden = false
            btnPapper.isHidden = false
            btnScissors.isHidden = false
            
            btnRock.isEnabled = true
            btnPapper.isEnabled = true
            btnScissors.isEnabled = true
            
        case .win:
            view.backgroundColor = .green
            view.backgroundColor = UIColor(red: 0.6, green: 0.7, blue: 0.5, alpha: 1)
        case .lose:
            view.backgroundColor = .red
            view.backgroundColor = UIColor(red: 0.7, green: 0.5, blue: 0.4, alpha: 1)
        case .draw:
            view.backgroundColor = .orange
        }
    }
    
    func play(userSign: Sign) {
        let computerSign = randomSign()
        let gameState = userSign.gameState(against: computerSign)
        updateUI(state: gameState)
        
        lbSignComputer.text = computerSign.emoji
        
        btnRock.isEnabled = false
        btnPapper.isEnabled = false
        btnScissors.isEnabled = false
        
        btnRock.isHidden = true
        btnPapper.isHidden = true
        btnScissors.isHidden = true
        
        switch userSign {
        case .rock:
            btnRock.isHidden = false
        case .papper:
            btnPapper.isHidden = false
        case .scissors:
            btnScissors.isHidden = false
        }
        
        btnPlayAgain.isHidden = false
    }

}

