//
//  signInScreenVC.swift
//  ScooterApp
//
//  Created by Mehmet Serhat Gültekin on 7.01.2025.
//

import UIKit

class signInScreenVC: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var emaillTF: UITextField!
    @IBOutlet weak var telephoneNoTF: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // self.navigationItem.setHidesBackButton(true, animated: true)
        registerButton.layer.cornerRadius = registerButton.frame.height / 2
    }
    
    @IBAction func signInTapped(_ sender: Any) {
        
    }
    
  

}
