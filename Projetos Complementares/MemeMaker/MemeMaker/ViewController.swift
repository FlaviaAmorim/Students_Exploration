//
//  ViewController.swift
//  MemeMaker
//
//  Created by flaviaamorim on 10/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var lbTopCaption: UILabel!
    @IBOutlet weak var lbBottonCaption: UILabel!
    
    @IBAction func actionSegmentControl(_ sender: Any) {
        updateLegend()
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            lbTopCaption.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragButtomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            lbBottonCaption.center = sender.location(in: view)
        }
    }
    

    var topChoices = [
        CaptionOption(emoji: "😎", legend: "Sabe o que é legal?"),
        CaptionOption(emoji: "🤬", legend: "Sabe o que me tira do sério?"),
        CaptionOption(emoji: "😍", legend: "Sabe o que eu adoro?")
    ]
    var bottomChoices = [
        CaptionOption(emoji: "😹", legend: "Gatos de sapato"),
        CaptionOption(emoji: "🐶", legend: "Cachorros de gorros"),
        CaptionOption(emoji: "🐒", legend: "Macacos em buracos")
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupSegmentedControl()
        updateLegend()
    }

    func setupSegmentedControl() {
        //Configuracao botao superior
        topSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji , at: topChoices.count, animated: false)
        }
        
        topSegmentedControl.selectedSegmentIndex = 0
        
        //Configuracao botao inferior
        bottomSegmentedControl.removeAllSegments()
        
        for choices in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choices.emoji , at: bottomChoices.count, animated: false)
        }
        
        bottomSegmentedControl.selectedSegmentIndex = 0
        
    }
    //Atualiza frase na UI
    func updateLegend() {
        let topIndex = topSegmentedControl.selectedSegmentIndex
        lbTopCaption.text = topChoices[topIndex].legend
        
        let bottomIndex = bottomSegmentedControl.selectedSegmentIndex
        lbBottonCaption.text = bottomChoices[bottomIndex].legend
    }
}

