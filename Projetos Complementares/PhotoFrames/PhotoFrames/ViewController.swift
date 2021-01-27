//
//  ViewController.swift
//  PhotoFrames
//
//  Created by flaviaamorim on 15/01/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgBoat: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgBoat.layer.borderColor = UIColor.black.cgColor
        imgBoat.layer.borderWidth = 8
    }
    

    @IBAction func button(_ sender: Any) {
        let teste = testeViewController()
        
        self.navigationController?.pushViewController(teste, animated: true)
    }
    
    

   
    
    
    
}

