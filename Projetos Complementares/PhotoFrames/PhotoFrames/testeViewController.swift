//
//  testeViewController.swift
//  PhotoFrames
//
//  Created by flaviaamorim on 15/01/21.
//

import UIKit

class testeViewController: UIViewController {

    let containerView = UIView()
    let containerImage = UIView()
    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerView()
        setupContainerImage()
        // Do any additional setup after loading the view.
    }

    func setupContainerView() {
        view.addSubview(containerView)
        containerView.backgroundColor = .lightGray
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    func setupContainerImage() {
        containerView.addSubview(containerImage)
        containerView.addSubview(imageView)
        
        containerImage.translatesAutoresizingMaskIntoConstraints = false
        containerImage.backgroundColor = .brown
        
        containerImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        containerImage.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 50).isActive = true
        containerImage.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -50).isActive = true
        containerImage.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -50).isActive = true
        
        imageView.image = UIImage(named: "Boat")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: containerImage.topAnchor, constant: 16).isActive = true
        imageView.leftAnchor.constraint(equalTo: containerImage.leftAnchor, constant: 16).isActive = true
        imageView.rightAnchor.constraint(equalTo: containerImage.rightAnchor, constant: -16).isActive = true
        imageView.bottomAnchor.constraint(equalTo: containerImage.bottomAnchor, constant: 16).isActive = true
    }

}
