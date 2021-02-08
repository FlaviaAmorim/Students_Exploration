//
//  ViewController.swift
//  ColorMix
//
//  Created by flaviaamorim on 08/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupColorView()
    }

    func setupColorView() {
        colorView.backgroundColor = .black
    }

}

