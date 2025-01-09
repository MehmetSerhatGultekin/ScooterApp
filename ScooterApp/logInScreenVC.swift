//
//  ViewController.swift
//  ScooterApp
//
//  Created by Mehmet Serhat Gültekin on 7.01.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        view.addGestureRecognizer(tapGesture)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        logInButton.layer.cornerRadius = 6
    }
    
    @objc private func handleTap() {
        self.view.endEditing(true)
    }
}

