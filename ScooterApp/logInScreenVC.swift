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
      
        logInButton.layer.cornerRadius = logInButton.frame.height / 2
    }


}

