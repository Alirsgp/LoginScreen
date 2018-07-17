//
//  ViewController.swift
//  LoginScreen
//
//  Created by Ali Mohammadian on 7/17/18.
//  Copyright © 2018 Ali Mohammadian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var userText: UITextField!
    
    @IBOutlet weak var forgotUserButton: UIButton!
    
    @IBOutlet weak var forgotPassButton: UIButton!
    
    @IBAction func forgotUserAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserOrPassword", sender: forgotUserButton)
    }
    
    @IBAction func forgotPassAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserOrPassword", sender: forgotPassButton)
    }
    
    
    @IBAction func LoginButton(_ sender: Any) {
        performSegue(withIdentifier: "RedView", sender: LoginButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        
        guard let localSender = sender as? UIButton else {return}
        
        if (localSender == forgotUserButton) {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if (localSender == forgotPassButton) {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if (localSender == LoginButton) {
            segue.destination.navigationItem.title = userText.text
        }
    
    }
}

